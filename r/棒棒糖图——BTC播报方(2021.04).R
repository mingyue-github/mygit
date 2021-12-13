#棒棒糖图——BTC播报方(2021.04)
library(ggplot2)
data1<-read.csv("D:/block/BTC/2021-04.csv")
count1<-table(data1$播报方)#table()生成频数分布表(一维列联表)
frame1<-data.frame(count1)#data.frame()转换生成数据框
sort1<-sort(frame1$Freq,index.return=TRUE,decreasing=FALSE)
frame1$Var1<-factor(frame1$Var1,levels=frame1$Var1[sort1$ix])

ggplot(frame1,aes(Freq,Var1))+
  geom_segment(aes(x=0,xend=Freq,y=Var1,yend=Var1))+#添加连接线，无线则为滑珠散点图(克利夫兰点图
  geom_point(shape=21,size=3,colour="black",fill="#FC4E07")


#添加标题title()需要
#dev.new()
#par(pin=c(3,3),mai=c(0.1,0.4,0.4,0.4),cex=0.7)
#plot.new()
#title("BTC播报方(2021.04)",cex.main=1)

