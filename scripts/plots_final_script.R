library(maps)
library(ggplot2)
library(dplyr)
library(plotly)
library(htmlwidgets)
library(hash)
library(ggmap)


dflist <- c("clinic_2011", "clinic_2012", "clinic_2013", "clinic_2014",
            "clinic_2015", "clinic_2016", "clinic_2017", "clinic_2018", "clinic_2019")

#### CITY-LEVEL Data Generation

clinic_df <- data.frame()

# Uncomment the following to initialize a new hash table for geocoding
# coordinates <- hash()

## NOTE: for geocoding, you'll need to input your Google Maps API authentication key

for(i in 1:length(dflist)) {
  
  # load data for that year
  
  year <- as.numeric(gsub("clinic_", "", dflist[i]))
  clinic_data <- eval(parse(text = dflist[i])) 
  
  # group by city+state to merge all clinics...
  clinic_data_city <- clinic_data %>% 
    group_by(coord_name, ClinStateCode) %>% 
    summarise(sum_bank = sum(total_bank),
              sum_tubal = sum(total_tubal),
              sum_dor = sum(total_DOR),
              sum_male = sum(total_male),
              sum_uterine = sum(total_uterine),
              sum_endo = sum(total_endo),
              sum_ovul = sum(total_ovul),
              sum_all_cycles = sum(total_all_cycles),
              sum_total_all_cycles_ground_truth = sum(total_all_cycles_ground_truth),
              
              percentage_bank = sum_bank/sum_total_all_cycles_ground_truth,
              percentage_tubal = sum_tubal/sum_total_all_cycles_ground_truth,
              percentage_DOR = sum_dor/sum_total_all_cycles_ground_truth,
              percentage_uterine = sum_uterine/sum_total_all_cycles_ground_truth,
              sum_sub_35 = sum(total_sub_35), 
              sum_35_37 = sum(total_35_37), 
              sum_38_40= sum(total_38_40), 
              sum_gt_40 = sum(total_gt_40), 
              perc_sub_35 = sum_sub_35/sum_total_all_cycles_ground_truth,
              perc_35_37 = sum_35_37/sum_total_all_cycles_ground_truth,
              perc_38_40 = sum_38_40/sum_total_all_cycles_ground_truth,
              perc_gt_40 = sum_gt_40/sum_total_all_cycles_ground_truth# begin new stuff I added
              #sum_donor = sum(total_donor)
              )
  
  # then generate geocode for each city
  clinic_data_city$lat <- 0
  clinic_data_city$long <- 0
  
  # generate hash entries by geocoding: if key already hashed, output values; else, run API call then hash its output
  # must match exact strings, so will generate basically duplicated keys with identical lat,long values
  for(j in 1:nrow(clinic_data_city)) {
    city <- clinic_data_city$coord_name[j]
    
    if(city %in% keys(coordinates)) {
      
      clinic_data_city$long[j] <- coordinates[[city]][[1]]
      clinic_data_city$lat[j] <- coordinates[[city]][[2]]
      
    } else { 
      
      coordinates[[city]] <- geocode(city)
      clinic_data_city$long[j] <- coordinates[[city]][[1]]
      clinic_data_city$lat[j] <- coordinates[[city]][[2]]
    }
  }
  
  clinic_data_city$year <- year
  
  # rbind cities to cities df
  clinic_df <- rbind(clinic_df, clinic_data_city)

}


#### NATIONAL LEVEL SUM STATS

# continental only
min_lat <- 25
max_lat <- 50

clinic_df_cont <- clinic_df %>%
  filter(lat < max_lat, lat > min_lat)

##### egg banking and total cycles vs. year

year_sum_stats <- clinic_df_cont %>% group_by(year) %>% 
  summarise(total_cycles = sum(sum_total_all_cycles_ground_truth), 
            total_bank = sum(sum_bank), 
            total_non_bank = total_cycles-total_bank,
            percentage_bank = total_bank/total_cycles,
            
            total_tubal = sum(sum_tubal),
            percentage_tubal_all = total_tubal/total_cycles,
            percentage_tubal_nonbank = total_tubal/total_non_bank,
            
            total_DOR = sum(sum_dor),
            percentage_DOR_all = total_DOR/total_cycles,
            percentage_DOR_nonbank = total_DOR/total_non_bank,
            
            total_male = sum(sum_male),
            percentage_male_all = total_male/total_cycles,
            percentage_male_nonbank = total_male/total_non_bank,
            
            total_uterine = sum(sum_uterine),
            percentage_uterine_all = total_uterine/total_cycles,
            percentage_uterine_nonbank = total_uterine/total_non_bank,
            
            total_endo = sum(sum_endo),
            percentage_endo_all = total_endo/total_cycles,
            percentage_endo_nonbank = total_endo/total_non_bank,
            
            total_ovul = sum(sum_ovul),
            percentage_ovul_all = total_ovul/total_cycles,
            percentage_ovul_nonbank = total_ovul/total_non_bank)

options(scipen=9999)


#### Fit models 

fit_all_cycles <- lm(data = year_sum_stats, log10(total_cycles) ~ year)
cagr_all <- 10^(fit_all_cycles$coefficients[[2]]) - 1
cagr_all_perc <- round(cagr_all, 3)*100
# 9.6% a year

fit_bank <- lm(data = year_sum_stats, log10(total_bank) ~ year)
cagr_bank <- 10^(fit_bank$coefficients[[2]]) - 1
cagr_bank_perc <- round(cagr_bank, 3)*100

# 34.2% a year

fit_non_bank <- lm(data = year_sum_stats, log10(total_non_bank) ~ year)
cagr_non_bank <- 10^(fit_non_bank$coefficients[[2]]) - 1
cagr_non_bank_perc <- round(cagr_non_bank, 3)*100

# 4.2% a year


## plot

ggplot(data = year_sum_stats, aes(x=as.integer(year))) + 
  geom_point(aes(y=total_cycles, color = 'All Cycles'), size = 3) + 
  geom_point(aes(y = total_bank, color = 'Banking'), size = 3) +
  geom_point(aes(y = total_non_bank, color = 'Non-banking'), size = 3) + 
  geom_smooth(aes(y=total_cycles), method="glm", method.args=list(family=gaussian(link="log")), se = F, linetype = "dashed") +
  geom_smooth(aes(y=total_non_bank), method="glm", method.args=list(family=gaussian(link="log")), se = F, linetype = "dashed") +
  geom_smooth(aes(y=total_bank), method="glm", method.args=list(family=gaussian(link="log")), se = F, linetype = "dashed") +
  scale_colour_manual(name="Cycle Type", values = c("All Cycles"="#F8766D", "Banking"="#7CAE00", "Non-banking"="#00BFC4")) + 
  labs(x = "Year", 
       y = "# of cycles", 
       title = "ART Cycles by Type vs. Year") +
  annotate(geom='text',x=2012,y=350000,label="CAGR by Cycle Type",fontface='bold') + 
  annotate(geom='text',x=2012,y=335000,label=paste("All Cycles: ", cagr_all_perc, "%", sep="")) +
  annotate(geom='text',x=2012,y=320000,label=paste("Banking: ", cagr_bank_perc, "%", sep="")) +
  annotate(geom='text',x=2012,y=305000,label=paste("Non-Banking: ", cagr_non_bank_perc, "%", sep=""))

# naive exponential extrapolation 10 years out (really should all be logistic growth curves)
#year_sum_stats$projected <- F
#year_sum_stats[10:20,] <- 0
#year_sum_stats$projected[10:20] <- T
#year_sum_stats$year[10:20] <- seq(2020, 2030, 1)
#
#year_sum_stats$total_cycles[10:20] <- year_sum_stats$total_cycles[9]*(10^(fit_all_cycles$coefficients[[2]]))^(year_sum_stats$year[10:20]-2019)
#year_sum_stats$total_bank[10:20] <- year_sum_stats$total_bank[9]*(10^(fit_bank$coefficients[[2]]))^(year_sum_stats$year[10:20]-2019)
#year_sum_stats$total_non_bank[10:20] <- year_sum_stats$total_non_bank[9]*(10^(fit_non_bank$coefficients[[2]]))^(year_sum_stats$year[10:20]-2019)


#### CITY-LEVEL PLOTS

### Whole US Map, Percentage_bank over time, size proportional to city cycles that year

usa <- map_data("usa") 

p = ggplot() +
  geom_polygon(data = usa, aes(x=long, y = lat, group = group), fill = "white", color = "black") + 
  coord_fixed(1.3) + 
  geom_point(data = clinic_df_cont, mapping = aes(x = long, y = lat, size= sum_total_all_cycles_ground_truth, color = percentage_bank, frame = year, ids = coord_name)) +
  theme(axis.ticks = element_blank()) + scale_color_gradient(low="blue", high="red") +
  scale_size_continuous(name = "Number of Cycles")
  
p1 <- plotly::ggplotly(p)

p1 <- plotly::animation_opts(p1, redraw = T, mode = "afterall")

saveWidget(p1, "percentage_bank_map.html")

