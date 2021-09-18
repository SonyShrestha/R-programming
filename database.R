library(RMySQL)
con1=dbConnect(MySQL(),
               user="root",
               password="test",
               host="localhost",
               dbname="test_db")
dbListTables(con1)
result=dbSendQuery(con1,"select * from r_table")
fetch(result,n=-1)
db=data.frame(id=c(1,2),
              name=c("sony","pop"))
dbWriteTable(con1,"test",db[,],append=TRUE)
result=dbSendQuery(con1,"select * from test")
fetch(result,n=-1)
