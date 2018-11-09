# exercise9 / Simai Zhang

# 1
setwd("~/bio")
LDH=read.table("LDH.txt", header = T, stringsAsFactors = F)
library(ggplot2)
a=ggplot(data=LDH,aes(x=pyruvate,y=activity))
a+ggtitle("Michaelis-Menton Plot for LDH")+geom_point()+stat_smooth(method="auto")+theme_bw()+
  theme(panel.grid = element_blank(), plot.title=element_text(hjust = 0.5))+
  xlab("[pyruvate] (mM)") +  ylab("Activity (delta A340/min)")


# 2.1
setwd("~/bio/Biocomp-Fall2018-181102-Exercise9/")
data=read.table("data.txt", header = T, stringsAsFactors = F, sep=",")
b=ggplot(data=data)
b+geom_bar(aes(x=as.factor(region),y=observations), stat = "summary",
           fun.y = "mean",fill="black",color="black")+ theme_classic() + xlab("region") + ylab("mean of observation")

# 2.2
c=ggplot(data=data,aes(x=region,y=observations))
c+geom_jitter()+geom_point()+coord_cartesian()+theme_bw()

# 2.3
# From the bar plot???we can not tell the difference between 4 regions, since they all have similar mean value.
# However, from the scatter plots, we can clearly see the different distributions for 4 regions.
           