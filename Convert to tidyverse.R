# Libraries required
library(tidyverse)
library(openxlsx)

# Set working directory in Github folder
setwd("~/Documents/GitHub/Make-Over-Monday-2020-Week-1")

# Read original dataset as data frame
df <- as.data.frame(read.xlsx("Data.xlsx"))

# Transform into a tidyverse file
# Key value = common variable to be used as common key
# Value = values of the variable and name of the columns to be used
df.l <- gather(df, 
               key = "Year", 
               value = "Value", 
               "2004", "2005", "2006", "2007", "2008", "2013", "2017")

# Write resulting data frame as an Excel file (can also be writen in csv or whatever)
write.xlsx(df.l, "Data_tidy.xlsx")