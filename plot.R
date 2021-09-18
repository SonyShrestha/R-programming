# chart 
df=data.frame(
  id=c(1,1,3),
  name=c("Sony","Pragya","Prasanna"),
  height=c(10,20,30),
  age=c(35,40,26)
)

df
pie(df$height,
    main="PIE CHART",
    labels=df$name,
    col=rainbow(length(df)),
    clockwise = FALSE,
    cex=0
    )
legend("topleft",
       df$name,
       lty=1,
       lwd=3,
       col=rainbow(length(df)),
       )
legend("topright",
       df$name,
       bty=1,
       cex=0.8,
       fill=rainbow(length(df)),
)


install.packages("plotrix")
library(plotrix)
pie3D(df$height,
    main="PIE CHART",
    labels=df$name,
    col=rainbow(length(df)),
    explode=0.2
    )



# bar chart
df
barplot(df$height,
        main="BAR PLOT",
        xlab="Name",
        ylab="Height",
        names.arg=df$name,
        las=1,
        col=2,
        border=4,
        horiz=TRUE,
        cex.main=0.5,
        cex.lab=0.5,
        cex.axis=0.5,
        cex.names = 0.5,
        col.lab=4,
        font.lab=3)
legend("topright",
       df$name,
       bty=1,
       fill=2,
       cex=0.6)



################ BOX PLOT
boxplot(df$height,
        main="box plot",
        xlab="x",
        ylab="height",
        las=1,
        col=2,
        border=4,
        notch=TRUE
        )

summary(df$height)


#########333 histogram
df=data.frame(
  name=c("a","b","c","d","e","f","g","h","i","j"),
  age=c(1,2,4,3,5,1,2,7,7,5)

)
hist(df$age,breaks=10)



##########3 plot
df=data.frame(
  id=c(1,2,3),
  name=c("Sony","Pragya","Prasanna"),
  height=c(10,20,30),
  age=c(20,25,10)
)
plot(df$age,main="plot",
     xlab="index",
     ylab="age",
     cex=10,
     col=2,
     type="l")

lines(df$height,type="p",cex=10)

# scatter plot
plot(df$age,df$height)


##################
df=data.frame(
  col1=c(1,2,3,4),
  col2=c(2,3,4,5),
  col3=c(5,4,3,2)
)
df
plot(~col1+col2+col3,data=df)

boxplot(~col1+col2,dat=df)


levels(df$age)
