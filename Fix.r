install.packages("data.table")
install.packages("foreign")
install.packages("tibble")
library(foreign)
library(data.table)
library(tibble)
a<-fread("train.csv")
b<-a[,-1]
b=rownames_to_column(b, var="id") 
write.csv(b, file="train1.csv", fileEncoding = "Cp1252", row.names = FALSE)
