library(readr)
library(data.table)

#D:/Thunder/20220425_Iba1_TUNEL
dir = "D:/Thunder/20220425_Iba1_TUNEL/Results"  

file_list = list.files(path = dir, pattern = "*.csv$", recursive = TRUE, full.names = TRUE)  
store_csv = paste(dir,"/TUNEL in Iba1.csv", sep = "")

for(i in 1:length(file_list))
{
  df = fread(file = file_list[i],encoding = 'UTF-8')  
  write_csv(df, path = store_csv, append = TRUE, col_names = FALSE)
}