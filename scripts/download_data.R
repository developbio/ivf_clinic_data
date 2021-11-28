library(readxl)
library(dplyr)
options(dplyr.print_max = 1e9)


# 1995
#clinic_1995$Diag_TubalRate #string " "31%" "
#clinic_1995$Number_Cycles_35to39 # number of fresh nondonor cycles by age
#clinic_1995$Num_Transfer_LT35 # number of frozen nondonor transfers by age

# < 35, 35 - 39, >39

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_1995.xls", destfile = "./excel_files/clinic_data_1995", mode = "wb")
clinic_1995 <- readxl::read_excel("./excel_files/clinic_data_1995", sheet = 1)


# 1996
# clinic_1996$Tubal
# clinic_1996$FrCy30 # <35 fresh nondonor
# clinic_1996$CrTr30 # frozen nondonor transfer <35
# clinic_1996$FdTr30 # fresh donor by age
# clinic_1996$CdTr30 # frozen donor transfer by age
# < 35, 35 - 39, >39

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_1996.xls", destfile = "./excel_files/clinic_data_1996", mode = "wb")
clinic_1996 <- readxl::read_excel("./excel_files/clinic_data_1996", sheet = 1)

#####

# 1997
# clinic_1997$Tubal
# clinic_1997$FrCy40 # over 40, not including 40, fresh nondonor
# clinic_1997$CrTr30 # <35, frozen nondonor
# clinic_1997$FdTr30 # fresh donor by age
# clinic_1997$CdTr30 # frozen donor transfer by age
# <35, 35-37, 38-40, >40

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_1997.xls", destfile = "./excel_files/clinic_data_1997", mode = "wb")
clinic_1997 <- readxl::read_excel("./excel_files/clinic_data_1997", sheet = 1)


# 1998
#clinic_1998$FrCy30 # fresh nondonor cycle
#clinic_1998$CrTr30 # frozen nondonor
#clinic_1998$FdTr30 # fresh donor by age
#clinic_1998$CdTr30 # frozen donor transfer by age

# <35, 35-37, 38-40, >40
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_1998.xls", destfile = "./excel_files/clinic_data_1998", mode = "wb")
clinic_1998 <- readxl::read_excel("./excel_files/clinic_data_1998", sheet = 1)


##### from 99 on we lose donor embryos by age group

# 1999
#clinic_1999$FshNDCycle1 #fresh nondonor cycles
#clinic_1999$ThwNDTransfers1 # frozen transfer

# <35, 35-37, 38-40, 41-42

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_1999.xls", destfile = "./excel_files/clinic_data_1999", mode = "wb")
clinic_1999 <- readxl::read_excel("./excel_files/clinic_data_1999", sheet = 1)


# 2000
#clinic_2000$FshNDCycle1
#clinic_2000$ThwNDTransfers1

# <35, 35-37, 38-40, 41-42
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2000.xls", destfile = "./excel_files/clinic_data_2000", mode = "wb")
clinic_2000 <- readxl::read_excel("./excel_files/clinic_data_2000", sheet = 1)


# 2001
#clinic_2001$FshNDCycle1
#clinic_2001$ThwNDTransfers1

# <35, 35-37, 38-40, 41-42
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2001.xls", destfile = "./excel_files/clinic_data_2001", mode = "wb")
clinic_2001 <- readxl::read_excel("./excel_files/clinic_data_2001", sheet = 1)



# 2002
# <35, 35-37, 38-40, 41-42
#clinic_2002$FshNDCycle1
#clinic_2002$ThwNDTransfers1

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2002.xls", destfile = "./excel_files/clinic_data_2002", mode = "wb")
clinic_2002 <- readxl::read_excel("./excel_files/clinic_data_2002", sheet = 1)


# 2003
# <35, 35-37, 38-40, 41-42
#clinic_2003$FshNDCycle1
#clinic_2003$ThwNDTransfers1

download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2003.xls", destfile = "./excel_files/clinic_data_2003", mode = "wb")
clinic_2003 <- readxl::read_excel("./excel_files/clinic_data_2003", sheet = 1)


# 2004
#clinic_2004$FshNDCycle1
#clinic_2004$ThwNDTransfers1

# <35, 35-37, 38-40, 41-42
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2004.xls", destfile = "./excel_files/clinic_data_2004", mode = "wb")
clinic_2004 <- readxl::read_excel("./excel_files/clinic_data_2004", sheet = 1)


# 2005 
#clinic_2005$FshNDCycle1
#clinic_2005$ThwNDTransfers1

# <35, 35-37, 38-40, 41-42
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2005.xls", destfile = "./excel_files/clinic_data_2005", mode = "wb")
clinic_2005 <- readxl::read_excel("./excel_files/clinic_data_2005", sheet = 1)


# 2006 -- first year with national summary PDF
#clinic_2006$FshNDCycle1
#clinic_2006$ThwNDTransfers1

# <35, 35-37, 38-40, 41-42
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2006.xls", destfile = "./excel_files/clinic_data_2006", mode = "wb")
clinic_2006 <- readxl::read_excel("./excel_files/clinic_data_2006", sheet = 1)



#######

# 2007
#clinic_2007$FshNDCycle1
#clinic_2007$ThwNDTransfers1

# < 35, 35-37, 38-40, 41-42, 43-44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2007.xls", destfile = "./excel_files/clinic_data_2007", mode = "wb")
clinic_2007 <- readxl::read_excel("./excel_files/clinic_data_2007", sheet = 1)


# 2008
#clinic_2008$FshNDCycle1
#clinic_2008$ThwNDTransfers1

# < 35, 35-37, 38-40, 41-42, 43-44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2008.xls", destfile = "./excel_files/clinic_data_2008", mode = "wb")
clinic_2008 <- readxl::read_excel("./excel_files/clinic_data_2008", sheet = 1)


# 2009 -- first year of PDF clinic reports
#clinic_2009$FshNDCycle1
#clinic_2009$ThwNDTransfers1

# < 35, 35-37, 38-40, 41-42, 43-44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2009.xls", destfile = "./excel_files/clinic_data_2009", mode = "wb")
clinic_2009 <- readxl::read_excel("./excel_files/clinic_data_2009", sheet = 1)


# 2010
#clinic_2010$FshNDCycle1
#clinic_2010$ThwNDTransfers1

# < 35, 35-37, 38-40, 41-42, 43-44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2010.xls", destfile = "./excel_files/clinic_data_2010", mode = "wb")
clinic_2010 <- readxl::read_excel("./excel_files/clinic_data_2010", sheet = 1)


#######


# 2011 -- begin gestational carrier rate, begin egg banking 
# < 35, 35-37, 38-40, 41-42, 43-44, >44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2011.xls", destfile = "./excel_files/clinic_data_2011", mode = "wb")
clinic_2011 <- readxl::read_excel("./excel_files/clinic_data_2011", sheet = 1)


#### Begin ground-truth on total performed cycles
# 2012
# < 35, 35-37, 38-40, 41-42, 43-44, >44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2012.xls", destfile = "./excel_files/clinic_data_2012", mode = "wb")
clinic_2012 <- readxl::read_excel("./excel_files/clinic_data_2012", sheet = 1)


# 2013 -- egg banking by age now
# < 35, 35-37, 38-40, 41-42, 43-44, >44
download.file("https://www.cdc.gov/art/excelfiles/clinic_tables_data_2013.xls", destfile = "./excel_files/clinic_data_2013", mode = "wb")
clinic_2013 <- readxl::read_excel("./excel_files/clinic_data_2013", sheet = 1)


# 2014 
# < 35, 35-37, 38-40, 41-42, 43-44, >44
download.file("https://www.cdc.gov/art/artdata/docs/excel/2014-Clinic-Tables-Data-Dictionary.xls", destfile = "./excel_files/clinic_data_2014", mode = "wb")
clinic_2014 <- readxl::read_excel("./excel_files/clinic_data_2014", sheet = 1)


# 2015
# < 35, 35-37, 38-40, 41-42, 43-44, >44
download.file("https://www.cdc.gov/art/artdata/docs/excel/FINAL-2015-clinic-table-dataset.xls", destfile = "./excel_files/clinic_data_2015", mode = "wb")
clinic_2015 <- readxl::read_excel("./excel_files/clinic_data_2015", sheet = 1)


######


# 2016 -- change file type to .xlsx
# < 35, 35-37, 38-40, 41-42, >42
download.file("https://www.cdc.gov/art/artdata/docs/excel/FINAL-2016-clinic-table-dataset.xlsx", destfile = "./excel_files/clinic_data_2016", mode = "wb")
clinic_2016 <- readxl::read_xlsx("./excel_files/clinic_data_2016", sheet = 1)


##### switch to sheet 3, not sheet 1, b/c more sheets

# 2017 
# big change in reporting  --> need to combine fresh and frozen
# < 35, 35-37, 38-40, 41-42, >43
download.file("https://www.cdc.gov/art/artdata/docs/excel/FINAL-2017-clinic-table-dataset.xlsx", destfile = "./excel_files/clinic_data_2017", mode = "wb")
clinic_2017 <- readxl::read_xlsx("./excel_files/clinic_data_2017", sheet = 3)


# 2018
# < 35, 35-37, 38-40, 41-42, >43
download.file("https://www.cdc.gov/art/artdata/docs/excel/FINAL-2018-clinic-table-dataset.xlsx", destfile = "./excel_files/clinic_data_2018", mode = "wb")
clinic_2018 <- readxl::read_xlsx("./excel_files/clinic_data_2018", sheet = 3)


######

# 2019 preliminary
# <35, 35-37, 38-40, >40
download.file("https://www.cdc.gov/art/artdata/docs/excel/2019-Preliminary-National-Summary-and-Clinic-Table-Dataset.xlsx", destfile = "./excel_files/clinic_data_2019", mode = "wb")
clinic_2019 <- readxl::read_xlsx("./excel_files/clinic_data_2019", sheet = 3)

