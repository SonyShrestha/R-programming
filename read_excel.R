setwd("D:/")
getwd()
install.packages("xlsx")
library(xlsx)
df=read.xlsx("test.xlsx",sheetIndex=1,header=FALSE,col.names=c("col1"),
             row.names=c("row1","row2","row3","row4"))

df

