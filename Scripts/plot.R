#library(rootSolve)
mydata=read.csv("N:/zhuzheng/481/scripts/loglogplot.csv")
plot(mydata,type="l",main="the plot of buffer size against number of clusters")
mydata2=read.csv("N:/zhuzheng/481/scripts/loglogplot2.csv")
plot(mydata2,type="l",main="the plot of buffer size against number of clusters")
markham=mydata2[1:5,]
london=mydata2[7:11,]
waterloo=mydata2[13:17,]
for(x in 2:17) {
  mydata2[x,3]=mydata2[x,2]-mydata2[x-1,2]
}
for(x in 2:17) {
  mydata2[x,4]=mydata2[x,3]-mydata2[x-1,3]
}
