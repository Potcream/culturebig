
as.matrix(colnames(df.2018))

#???? Exve, Q16, totalc ?? ???? ?ֱ? 2018?? ?????? ??????????Ʈ ????
rf.2018.E=randomForest(x=df.2018[,c(-50,-51,-7,-29,-52)],y=factor(df.2018[,52]),data=df.2018)
rf.2018.E
rf.2018.q16
rf.2018.tc
#?? ��?Ӻ????? ???? ???????? ?߿䵵 ?׷???(???? ?Ҽ??? ???? ????)
pl.2018tc=varImpPlot(rf.2018.tc)
pl.2018E=varImpPlot(rf.2018.E)
pl.2018q16=varImpPlot(rf.2018.q16)

list.of.2018pl=list(pl.2018F,pl.2018tc,pl.2018q16)
str(df.2018$Q19)
#Exve?????? ???ں?, ???ҵ氣?? boxplot
E.1421_18=ggplot(df.2018,aes(x=Exve, y=Q14_2_1, fill=Q14_2_1,na.rm=T)) + geom_boxplot()

E.Q19_18=ggplot(df.2018,aes(x=Exve, y=Q19, fill=Q19,na.rm=T)) + geom_boxplot()
E.1421_18
E.Q19_18
#EXve ?????? ???? ?? ��?? ?Լ? ????Ʈ 1,2,3?????? ????ǥ
E.Q6a1_18=ggplot(df.2018, aes(Q6_2A1,fill=Exve)) +
  labs(title = 'Exve on q62a1', x = 'Exve') +
  geom_bar(position='fill') +theme(legend.position="bottom")


E.Q6a2_18=ggplot(df.2018, aes(Q6_2A2,fill=Exve)) +
  labs(title = 'Exve on q62a2', x = 'Exve') +
  geom_bar(position='fill') +theme(legend.position="bottom")


E.Q6a3_18=ggplot(df.2018, aes(Q6_2A3,fill=Exve)) +
  labs(title = 'Exve on q62a3', x = 'Exve') +
  geom_bar(position='fill') +theme(legend.position="bottom")
E.Q6a1_18
F.Q6a1_18
E.Q6a2_18
F.Q6a2_18
E.Q6a3_18
F.Q6a3_18
