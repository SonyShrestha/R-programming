#vector
v1=c(1,2,3,4)
v1
class(v1)

#list
df=data.frame(id=c(1,2,3),
              name=c("a","b","c"))
l1=list(1,10.2,"a",c(1,2,3),df)
l1

# matrix
M=matrix(c('a','b','c','d','e','f','g','h','i'),
         ,nrow=3,ncol=3,byrow=TRUE)
M

#ARRAY
array1=array(c("red","green"),
             dim=c(2,3,3))
array1

#factor
a1=c(1,2,3,4,1,2,3)
a2=factor(a1)
a2
nlevels(a2)

# dataframe
df=data.frame(
  id=c(1,2,3,4),
  name=c("sony","pragya","prasanna","padma")
)
df



######### find variables
ls()
ls(pattern="a")
rm(a)
ls(pattern="a")


# arithmetic
a=11
b=2
a+b
a-b
a*b
a/b
a%/%b
a%%b
a^b

a>b
b<b
a>=b
a<=b
a!=b

a=TRUE
b=FALSE
!a
a|b
a&b

x=c(TRUE,FALSE)
y=c(TRUE,TRUE)
x && y
x || y



for ( i in 1:10){
  print(i)
}


i=1
while(i<10){
  print(i)
  i=i+1
}


# function
func1<-function(a,b){
  c=a+b
  print(c)
}
func1(2,3)

func2<-function(a,b){
  c=a+b
  return (c)
}
d=func2(2,3)
print(d)


func1<-function(a=10,b=20){
  c=a+b
  print(c)
}
func1()



# concatenate
paste("hi","hello",sep="-")

str="hello"
tolower(str)
toupper(str)
nchar(str)
substring(str,2,3)

# vector
v1=c(1,2,3,4,5)
v1
v1[2]
v1[c(1,2,3)]

print(seq(1,10,by=3))

v2=c(3,1,2)
sort(v2)


# list
l1=list(1,1.2,"a",c(1,2,3,4))
l1
names(l1)
names(l1)=c("int","double","char","vector")
# access vector element

l1
l1["int"]
l1["double"]
l1["vector"]
l1["v1"]="char"   
l1
# update vectore element
l1["v1"]="color"
l1

# delete vector element
l1["v1"]=NULL
l1



list1=list(1,2,3)
list1
vector1=unlist(list1)
vector1


# matrices
rowname=c("row1","row2")
colname=c("col1","col2","col3")
M=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE,dimnames=list(rowname,colname))
M

# access matrix element
M[1]
M[1,2]
M[1,]
M[,1]

# matrix operation
M=M1+M2
M=M1-M2
M=M1*M2
M=M1/M2




# ARRAY
r=c("r1","r2","r3")
c=c("c1","c2","c3")
m=c("m1","m2","m3")
a=array(c("red","yellow"),dim=c(3,3,3),
        dimnames=list(r,c,m))
a
a[1,2,1]
a[1,,1]


# factors
v1=c(1,2,3,4,1,2,3)
f1=factor(v1)
f1
nlevels(f1)

# dataframe
df=data.frame(
  id=c(1,2,3)
  name=c("ab","bc","cd")
)
df
df1=data.frame(df$name)
df1
df[2,1]

df1
df2=cbind(df1,c("a","b","c","d"))
df2
df3=rbind(df1,c("pop","e"))
df3



# melt the data


install.packages("melt")
d1=data.frame(
  id=c(1,2,3,4),
  name=c("a","b","c","d"),
  age=c(10,20,30,40),
  height=c(1,2,3,4)
)

d1
d2=melt(d1,id=c("id","name"))

a="color"
switch(a,"shape"="circle","color"="red","size"="10")
