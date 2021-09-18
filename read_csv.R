getwd()
setwd("D:/")

getwd()
df=read.csv("test.csv",header = FALSE,sep=",",
            col.names=c("a","b","c","d","e","f"),
            row.names=c("a","b","c","d","e","f"))
df

nrow(df)
ncol(df)
max(df$Age)
min(df$Age)
mean(df$Age)
summary(df$Age)
summary(df)

df_1=subset(df,Gender=="male")
df_1

df_2=subset(df,Gender=="male" & Age==50)
df_2

df_3=subset(df,Age==max(df$Age))

df_3
write.csv(df_2,"testing.csv")
df=read.csv("testing.csv")
df
