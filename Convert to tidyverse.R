library(tidyverse)
library(openxlsx)
setwd("~/Downloads")
df <- as.data.frame(read.xlsx("Data.xlsx"))
df.l <- gather(df, 
               key = "Year", 
               value = "Value", 
               "2004", "2005", "2006", "2007", "2008", "2013", "2017")
write.xlsx(df.l, "Data_tableau.xlsx")
