library(dplyr)
# Well, so much for "Don't Repeat Yourself"

# Unfortunately variable name changes are so frequent that it simply makes sense to recode each file individually.

# Also, the age-buckets change over time, so need to recode. 

clinic_1997 <- clinic_1997 %>% 
  mutate(total_sub_35=as.numeric(FrCy30)+as.numeric(CrTr30),
         total_35_37=as.numeric(FrCy35)+as.numeric(CrTr35),
         total_38_40=as.numeric(FrCy40)+as.numeric(CrTr40),
         total_gt_40=as.numeric(FrCy45)+as.numeric(CrTr45),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_1998 <- clinic_1998 %>% 
  mutate(total_sub_35=as.numeric(FrCy30)+as.numeric(CrTr30),
         total_35_37=as.numeric(FrCy35)+as.numeric(CrTr35),
         total_38_40=as.numeric(FrCy40)+as.numeric(CrTr40),
         total_gt_40=as.numeric(FrCy45)+as.numeric(CrTr45),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

###

clinic_1999 <- clinic_1999 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2000 <- clinic_2000 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2001 <- clinic_2001 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2002 <- clinic_2002 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         ClinStateCode = `State Code`,
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2003 <- clinic_2003 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2004 <- clinic_2004 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2005 <- clinic_2005 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2006 <- clinic_2006 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

#####

## lump together 41-42 and 43-44 into total_gt_40

clinic_2007 <- clinic_2007 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTransfers5),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2008 <- clinic_2008 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTransfers5),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2009 <- clinic_2009 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTransfers5),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name

clinic_2010 <- clinic_2010 %>% 
  mutate(total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTransfers1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTransfers2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTransfers3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTransfers4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTransfers5),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ",")) # added coord name


#### banking _not included_ in TotIncludedCyles

# pretty large residuals on theground truth...

# begin diagnosis, egg-banking, etc. data

clinic_2011 <- clinic_2011 %>% 
  mutate(total_donor = as.numeric(FshDnrTotCycles)+as.numeric(ThwDnrTotCycles),
        total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTotCycles1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+total_donor, # assume we can lump in majority of donor with gt 40 group
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_bank = as.numeric(TotExcludedBankingCycles),
         total_all_cycles = total_nondonor + total_bank,
         total_all_cycles_ground_truth = as.numeric(TotIncludedCycles) + total_bank, # get ground truth of all cycles, including banking, which is excluded
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
         # begin diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
         total_endo = endo_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
         total_uterine= uterine_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
         total_male = male_perc*total_all_cycles*0.01)# added coord name



### lump in the >44 bucket too

# residuals on ground truth vs. summed ground truth are v. small... total cycles identical???? --> they must have computed them that way

clinic_2012 <- clinic_2012 %>% 
  mutate(total_donor = as.numeric(FshDnrTotCycles)+as.numeric(ThwDnrTotCycles),
        total_sub_35=as.numeric(FshNDCycle1)+as.numeric(ThwNDTotCycles1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTotCycles5)+
           as.numeric(FshNDCycle6) + as.numeric(ThwNDTotCycles6) + total_donor,
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_bank = as.numeric(TotBankingCycles),
         total_all_cycles = total_nondonor + total_bank,
         total_all_cycles_ground_truth = as.numeric(TotPerformedCycles),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
        # begin diagnoses
        tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
        total_tubal = tubal_perc*total_all_cycles*0.01,
        DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
        total_DOR = DOR_perc*total_all_cycles*0.01,
        endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
        total_endo = endo_perc*total_all_cycles*0.01,
        uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
        total_uterine= uterine_perc*total_all_cycles*0.01,
        ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
        total_ovul = ovul_perc*total_all_cycles*0.01,
        male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
        total_male = male_perc*total_all_cycles*0.01)# added coord name


### the NAs begin...

# total cycle residuals are basically 0 :)

clinic_2013 <- clinic_2013 %>% 
  mutate(total_donor = as.numeric(FshDnrTotCycles)+as.numeric(ThwDnrTotCycles),
    total_sub_35=as.numeric(gsub(",", "", FshNDCycle1))+as.numeric(ThwNDTotCycles1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTotCycles5)+
           as.numeric(FshNDCycle6) + as.numeric(ThwNDTotCycles6) + total_donor,
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40, 
         total_bank = as.numeric(TotBankingCycles1) + as.numeric(TotBankingCycles2) + as.numeric(TotBankingCycles3) + as.numeric(TotBankingCycles4) + as.numeric(TotBankingCycles5) + as.numeric(TotBankingCycles6),
         total_all_cycles = total_nondonor + total_bank,
         total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumberCycles)),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
         # begin diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
         total_endo = endo_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
         total_uterine= uterine_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
         total_male = male_perc*total_all_cycles*0.01)# added coord name


clinic_2014 <- clinic_2014 %>% 
  mutate(total_donor = as.numeric(FshDnrTotCycles)+as.numeric(ThwDnrTotCycles), 
    total_sub_35=as.numeric(gsub(",", "", FshNDCycle1))+as.numeric(ThwNDTotCycles1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTotCycles5)+
           as.numeric(FshNDCycle6) + as.numeric(ThwNDTotCycles6)+total_donor,
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_bank = as.numeric(TotBankingCycles1) + as.numeric(TotBankingCycles2) + as.numeric(TotBankingCycles3) + as.numeric(TotBankingCycles4) + as.numeric(TotBankingCycles5) + as.numeric(TotBankingCycles6),
         total_all_cycles = total_nondonor + total_bank,
         total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumberCycles)),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
         # begin diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
         total_endo = endo_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
         total_uterine= uterine_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
         total_male = male_perc*total_all_cycles*0.01)# added coord name


clinic_2015 <- clinic_2015 %>% 
  mutate(total_donor = as.numeric(FshDnrTotCycles)+as.numeric(ThwDnrTotCycles), 
        total_sub_35=as.numeric(gsub(",", "", FshNDCycle1))+as.numeric(ThwNDTotCycles1),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+ 
           as.numeric(FshNDCycle5)+as.numeric(ThwNDTotCycles5)+
           as.numeric(FshNDCycle6) + as.numeric(ThwNDTotCycles6) + total_donor,
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_bank = as.numeric(TotBankingCycles1) + as.numeric(TotBankingCycles2) + as.numeric(TotBankingCycles3) + as.numeric(TotBankingCycles4) + as.numeric(TotBankingCycles5) + as.numeric(TotBankingCycles6),
         total_all_cycles = total_nondonor+total_bank,
         total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumberCycles)),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
         # begin diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
         total_endo = endo_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
         total_uterine= uterine_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
         total_male = male_perc*total_all_cycles*0.01)# added coord name

### change var names -- split up donor into eggs and embryos now

clinic_2016 <- clinic_2016 %>% 
  mutate(total_donor = as.numeric(FshDnrEggTotCycles)+as.numeric(ThwDnrEggTotCycles) + as.numeric(ThwDnrEmbTotCycles), 
    total_sub_35=as.numeric(gsub(",", "", FshNDCycle1))+as.numeric(gsub(",", "", ThwNDTotCycles1)),
         total_35_37=as.numeric(FshNDCycle2)+as.numeric(ThwNDTotCycles2),
         total_38_40=as.numeric(FshNDCycle3)+as.numeric(ThwNDTotCycles3),
         total_gt_40=as.numeric(FshNDCycle4)+as.numeric(ThwNDTotCycles4)+ as.numeric(FshNDCycle5)+as.numeric(ThwNDTotCycles5)+total_donor,
         total_nondonor = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_bank = as.numeric(TotBankingCycles1) + as.numeric(TotBankingCycles2) + as.numeric(TotBankingCycles3) + as.numeric(TotBankingCycles4) + as.numeric(TotBankingCycles5),
         total_all_cycles = total_nondonor+total_bank,
         total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumberCycles)),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","), 
         # begin diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_TubalRate))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_DORRate))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_EndometriosisRate))),
         total_endo = endo_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_UterineRate))),
         total_uterine= uterine_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_OvulatoryRate))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", Diag_MaleRate))),
         total_male = male_perc*total_all_cycles*0.01)# added coord name


########

clinic_2017 <- clinic_2017 %>% 
  mutate( # below are all cycles...includes egg-banking and donor!
         total_sub_35=as.numeric(gsub(",", "", TotNumCycles1)), # _all_ sub 35 cycles of all types
         total_35_37=as.numeric(gsub(",", "", TotNumCycles2)),
         total_38_40=as.numeric(gsub(",", "", TotNumCycles3)),
         total_gt_40=as.numeric(gsub(",", "", TotNumCycles4))+as.numeric(gsub(",", "", TotNumCycles5)),
         
         total_donor = as.numeric(Donor_NumTrans1)+as.numeric(Donor_NumTrans2) + as.numeric(Donor_NumTrans3), 
         
         total_all_cycles = total_sub_35+total_35_37+total_38_40+total_gt_40,
         total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumCyclesAll)),
         ClinCityCode = as.character(CurrentClinicCity),
         ClinStateCode = as.character(CurrentClinicState),
         coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
         
         # now to convert fertility preservation from percents and fractions to raw numbers
         total_bank_percentage = gsub("%", "", ReasonBank, fixed = T),
         total_bank_percentage = as.numeric(gsub("<", "", total_bank_percentage, fixed = T)),
         # total_bank_percentage = as.numeric(sapply(fert_pres_numbers, function(x) eval(parse(text = x))))*0.01,
         total_bank = total_bank_percentage*total_all_cycles*0.01,
         
         # diagnoses
         tubal_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonTubal))),
         total_tubal = tubal_perc*total_all_cycles*0.01,
         DOR_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonDOR))),
         total_DOR = DOR_perc*total_all_cycles*0.01,
         male_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonMale))),
         total_male = male_perc*total_all_cycles*0.01,
         endo_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonEndo))),
         total_endo = endo_perc*total_all_cycles*0.01,
         ovul_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonOvul))),
         total_ovul = ovul_perc*total_all_cycles*0.01,
         uterine_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonUterine))),
         total_uterine = uterine_perc*total_all_cycles*0.01)

# whacky NA stuff starts...

# throw out the clinics with stars --> all total cycles < 20...
clinic_2018_test <- clinic_2018 %>% filter(TotNumCycles1 != "*" & TotNumCycles2 != "*" & TotNumCycles3 != "*" & TotNumCycles4 != "*" & TotNumCycles5 != "*" & TotNumCyclesAll != "*")

clinic_2018 <- clinic_2018_test %>% 
  mutate( # below are all cycles...includes egg-banking and donor!
    total_sub_35=as.numeric(gsub(",", "", TotNumCycles1)), # _all_ sub 35 cycles of all types
    total_35_37=as.numeric(gsub(",", "", TotNumCycles2)),
    total_38_40=as.numeric(gsub(",", "", TotNumCycles3)),
    total_gt_40=as.numeric(gsub(",", "", TotNumCycles4))+as.numeric(gsub(",", "", TotNumCycles5)),

    # total_donor = as.numeric(Donor_NumTrans1)+as.numeric(Donor_NumTrans2) + as.numeric(Donor_NumTrans3), 
    
    total_all_cycles = total_sub_35+total_35_37+total_38_40+total_gt_40,
    total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumCyclesAll)),
    ClinCityCode = as.character(CurrentClinicCity),
    ClinStateCode = as.character(CurrentClinicState),
    coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
    
    # now to convert fertility preservation from percents and fractions to raw numbers
    total_bank_percentage = gsub("%", "", ReasonBank, fixed = T),
    total_bank_percentage = as.numeric(gsub(">", "", (gsub("<", "", total_bank_percentage, fixed = T)))),
    # total_bank_percentage = as.numeric(sapply(fert_pres_numbers, function(x) eval(parse(text = x))))*0.01,
    total_bank = total_bank_percentage*total_all_cycles*0.01,
    
    # diagnoses
    tubal_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonTubal))),
    total_tubal = tubal_perc*total_all_cycles*0.01,
    DOR_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonDOR))),
    total_DOR = DOR_perc*total_all_cycles*0.01,
    male_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonMale))),
    total_male = male_perc*total_all_cycles*0.01,
    endo_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonEndo))),
    total_endo = endo_perc*total_all_cycles*0.01,
    ovul_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonOvul))),
    total_ovul = ovul_perc*total_all_cycles*0.01,
    uterine_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonUterine))),
    total_uterine = uterine_perc*total_all_cycles*0.01)


clinic_2019_test <- clinic_2019 %>% filter(TotNumCycles1 != "*" & TotNumCycles2 != "*" & TotNumCycles3 != "*" & TotNumCycles4 != "*" & TotNumCyclesAll != "*")

clinic_2019 <- clinic_2019_test %>% 
  mutate( # below are all cycles...includes egg-banking and donor!
    total_sub_35=as.numeric(gsub(",", "", TotNumCycles1)), # _all_ sub 35 cycles of all types
    total_35_37=as.numeric(gsub(",", "", TotNumCycles2)),
    total_38_40=as.numeric(gsub(",", "", TotNumCycles3)),
    total_gt_40=as.numeric(gsub(",", "", TotNumCycles4)),
    
    # total_donor = as.numeric(Donor_NumTrans1)+as.numeric(Donor_NumTrans2) + as.numeric(Donor_NumTrans3), 
    
    total_all_cycles = total_sub_35+total_35_37+total_38_40+total_gt_40,
    total_all_cycles_ground_truth = as.numeric(gsub(",", "", TotNumCyclesAll)),
    ClinCityCode = as.character(CurrentClinicCity),
    ClinStateCode = as.character(CurrentClinicState),
    coord_name = paste(ClinCityCode, ClinStateCode, sep = ","),
    
    # now to convert fertility preservation from percents and fractions to raw numbers
    total_bank_percentage = gsub("%", "", ReasonBank, fixed = T),
    total_bank_percentage = as.numeric(gsub(">", "", (gsub("<", "", total_bank_percentage, fixed = T)))),
    total_bank = total_bank_percentage*total_all_cycles*0.01,
    
    
    # diagnoses
    tubal_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonTubal))),
    total_tubal = tubal_perc*total_all_cycles*0.01,
    DOR_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonDOR))),
    total_DOR = DOR_perc*total_all_cycles*0.01,
    male_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonMale))),
    total_male = male_perc*total_all_cycles*0.01,
    endo_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonEndo))),
    total_endo = endo_perc*total_all_cycles*0.01,
    ovul_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonOvul))),
    total_ovul = ovul_perc*total_all_cycles*0.01,
    uterine_perc = as.numeric(gsub("%", "", gsub("<", "", ReasonUterine))),
    total_uterine = uterine_perc*total_all_cycles*0.01)
