install.packages("rjson")
library(rjson)
setwd("D:/")

result=fromJSON(file="json.json")
result
df=as.data.frame(result)
df
