#assign variables
x=10
x

y<-200
y

assign("z",4)
z


# print
print("hello world")

print(z)


a=10
class(a)
b=2+3i
class(b)
c=10.3
class(c)
d="hello"
class(d)
is.integer(a)
is.numeric(a)
as.integer(a)
as.character(a)


d=10
e=20
d>e
d<e

# listing workspace variables
ls()
ls(pattern="a")

# remove variable
rm("d")

ls()

# arithmetic operator
a=11
b=2
a+b
a-b
a*b
a/b # 11/2=5.5
a%/%b # 11,2=5
a%%b # 11,2=1

# assignment
a<-1
a=1
1->a
a

# rational
a=10
b=12
a==b
a<b
a>b
a<=b
a>=b
a!=b


# logical operators
!= negation
&= elementwise logical and
&&= logical and
|= elementwise logical or
||= logical or

a=TRUE
!a
b=TRUE
a&&b
a||b
vec1=c(TRUE,FALSE)
vec2=c(TRUE,TRUE)
vec1&vec2
vec1|vec2


# decision making
# if
a=17
if(a==10){
  print("hello")
}else if(a==11){
  print("hi")
}else{
  print("bye")
}

# switch
a=5
switch(a,
       "one",
       "two",
       "three",
       "four",
       "five",
       "six")
b=0
switch(b,
       "one")

str="color"
switch(str,"shape"="circle","color"="red")

#ifelse
ifelse(10==20,"true result","false result")


# for
x=c("a","b","c")
for (i in x){
  print(i)
}
for (i in 1:30)
{
  print(i)
}


# while
a=5
while(a<=10){
  print(a)
  a=a+1
}

# break and next
a=1
while (a<=10){
  print(a)
  a=a+1
  if(a==5){
    break
  }
}

a=1
while (a<=10){
  
  a=a+1
  if(a==5){
    print("5 is skipped")
    next
  }
  print(a)
  
}



# function
# without return value
add<-function(a,b){
  c=a+b
  print(c)
}
add(2,3)

# with return value
add<-function(a,b){
  c=a+b
  return c
}
x=add(2,3)
x

# global variables: access global variable inside function
new_var1<<-30
add<-function(a,b){
  print(new_var1)
}
add(2,3)

# string length
x="hello world"
nchar(x)

# concatenate string using paste
str1="hello "
str2="world "
str3=" sony "
paste(str1,str2,str3,sep=" ")
paste(str1,str2,str3,sep=" ",collapse="") # removes unwted space between two string 

# convert to uppercase: toupper
str1="hello"
toupper(str1)
str2="NICE"
tolower(str2)

# substring
str3="hello world"
substring(str3,3,10)# index starts from 1


# create vector
# first way
a=c(0,1,2,3)
class(a)
typeof(a)
mode(a)

# second way
a=c(1:100)
a

# using seq
a=seq(1,30,3) # start, end, step
a


# access vector element
v1=c(1:10)
v1
v1[2] # access single element
v1[c(2,3,5)] # access multiple elements

# modify vector elements
v1[3]=13
v1

#delete vector elements
v1<-NULL
v1


# list
#create list: stores element of different datatype
l1=list("a",10.3,c(1,2,3),10)
l1
# naming list elements
l1=list(char="a",doub=10.3,vect=c(1,2,3),int=10)
l1

# access vector elements
l1[1]
l1[2]
l1[3]
l1[4]


# add element in list
l1["s"]="string"
l1

# update element in list
l1["color"]="red"
l1

# delete list element
l1["color"]<-NULL
l1

# merge list
l1=list(1,2,3)
l2=list(4,5,6)
l=c(l1,l2)
l

# convert list to vector
li1=list(1,2,3)
li1
li2=unlist(li1)
li2

#MATRIX
data1=c(1:9)
M=matrix(data1,nrow=3,ncol=3,byrow=TRUE)
M
# ACCESS MATRIX ELEMENT: M[row,column]
M[1,2]
M[1,]
M[,3]
# update matrix element
M[1,2]=11
M
# rbind: add row in matrix
rbind(M,c(0,0,0))
#cbind: add column in matrix
cbind(M,c(1,1,1))





df=read.csv("test.csv")
df
png(file="pie-chart.jpg")
pie(df$Age,labels=c("a","b","c","d","e"),
    clockwise = FALSE,
    col=rainbow(length(df$Age)))

legend("topright",c("a","b","c","d"),fill=rainbow(length(df$Age)))
legend(x=0,y=0,c("a","b","c","d"),
       fill=rainbow(length(df$Age)),
       lty=1,
       lwd=3,
       col=rainbow(length(df$Age)),
       bty=0)
dev.off()



# Pie chart 
df=read.csv("test.csv")
df
png(file="test.jpg")
pie(df$Age,
    main="Pie Chart plot of Age",
    labels=df$Name,
    col=rainbow(length(df$Age)),
    clockwise=FALSE)
legend("topright",df$Name,fill=rainbow(length(df$Name)))
dev.off()


# bar plot
df
barplot(df$Age,
        main="Bar Plot",
        xlab="Name",
        ylab="Age",
        names.arg=df$Name,
        col=c("red","blue","orange","brown","yellow"),
        border=4
        )
legend("topright",
       df$Name,
       cex=1,
       fill=c("red","blue","orange","brown","yellow")
       )

#HISTOGRAM
df
hist(df$Age,
     main="Histogram",
     xlab="Age",
     ylab="Frequency",
     xlim=c(10,40),
     ylim=c(0,1.5),
     breaks=30)

# box plot
df
boxplot(df$Age,
        main="Box Plot",
        notch=TRUE)


# line chart
df
plot(df$Age,
     main="Line Chart",
     xlab="Name",

          ylab="Age",
     type="l",
     col=2)
lines(c(15,30,23,22,12),type="o")

# scatterplot
plot(df$height,df$Age,
     main="Scatter Plot",
     xlab="Height",
     ylab="Age",
     xlim=c(500,2500),
     las=1,
     cex=2,
     pch=2)

#clustured bar chart
barplot(df$Age,
        main="Bar Plot",
        xlab="Name",
        ylab="Age",
        names.arg=df$Name,
        col=c("red","blue","orange","brown","yellow"),
        border=4
)
barplot(df$height,
        main="Bar Plot",
        xlab="Name",
        ylab="Age",
        names.arg=df$Name,
        col=c("red","blue","orange","brown","yellow"),
        border=4,
        beside=TRUE
)
df



# database

install.packages("RSQLServer")

library("RSQLServer")

install.packages(RMySQL)
library(RMySQL)
mydb = dbConnect(MySQL(), 
                 user='root', password='test', 
                 dbname='test_db',
                 host='localhost')
library("RODBC")
dbListTables(mydb)
result=dbSendQuery(mydb,"select * from test_tb")
fetch(result,n=1)
fetch(result,n=-1)

dbSendQuery(mydb,"update test_tb set name='xyz' where roll_no=4")
fetch(result,n=1)
fetch(result,n=-1)

dbSendQuery(mydb,"truncate table test_tb")

df
dbWriteTable(mydb,
             "r_table",
             df[1,],
             overwrite=TRUE)
dbWriteTable(mydb,
             "r_table",
             df[1,],
             append=TRUE)
dbListTables(mydb)
result=dbSendQuery(mydb,"select * from r_table")
fetch(result,n=-1)