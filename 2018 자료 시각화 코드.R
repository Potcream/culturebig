
as.matrix(colnames(df.2018))

#???? Futve, Q16, totalc ?? ???? ?ֱ? 2018?? ?????? ??????????Ʈ ????
rf.2018.F=randomForest(x=df.2018[,c(-50,-51,-7,-29)],y=factor(df.2018[,51]),data=df.2018)
rf.2018.q16=randomForest(x=df.2018[,c(-50,-51,-7,-29)],y=factor(df.2018[,29]),data=df.2018)
rf.2018.tc=randomForest(x=df.2018[,c(-50,-51,-7,-29)],y=factor(df.2018[,50]),data=df.2018)
rf.2018.F
rf.2018.q16
rf.2018.tc
#?? ��?Ӻ????? ???? ???????? ?߿䵵 ?׷???(???? ?Ҽ??? ???? ????)
pl.2018tc=varImpPlot(rf.2018.tc)
pl.2018F=varImpPlot(rf.2018.F)
pl.2018q16=varImpPlot(rf.2018.q16)

list.of.2018pl=list(pl.2018F,pl.2018tc,pl.2018q16)
str(df.2018$Q19)
#Futve?????? ???ں?, ???ҵ氣?? boxplot
F.1421_18=ggplot(df.2018,aes(x=Futve, y=Q14_2_1, fill=Q14_2_1,na.rm=T)) + geom_boxplot()

F.Q19_18=ggplot(df.2018,aes(x=Futve, y=Q19, fill=Q19,na.rm=T)) + geom_boxplot()
F.1421_18
F.Q19_18
#Futve ?????? ???? ?? ��?? ?Լ? ????Ʈ 1,2,3?????? ????ǥ
F.Q6a1_18=ggplot(df.2018, aes(Q6_2A1,fill=Futve)) +
  labs(title = 'Futve on q62a1', x = 'Futve') +
  geom_bar(position='fill') +theme(legend.position="bottom")


F.Q6a2_18=ggplot(df.2018, aes(Q6_2A2,fill=Futve)) +
  labs(title = 'Futve on q62a2', x = 'Futve') +
  geom_bar(position='fill') +theme(legend.position="bottom")


F.Q6a3_18=ggplot(df.2018, aes(Q6_2A3,fill=Futve)) +
  labs(title = 'Futve on q62a3', x = 'Futve') +
  geom_bar(position='fill') +theme(legend.position="bottom")
F.Q6a1_18
F.Q6a2_18
F.Q6a3_18
#totalc ?????? ???? ?? ��?? ?Լ? ????Ʈ 1,2,3?????? ????ǥ
Tc.Q6a1_18=ggplot(df.2018, aes(Q6_2A1,fill=new)) +
  labs(title = 'Totalc on q62a1', x = 'Totalc') +
  geom_bar(position='fill') +theme(legend.position="bottom")

Tc.Q6a2_18=ggplot(df.2018, aes(Q6_2A2,fill=new)) +
  labs(title = 'Totalc on q62a2', x = 'Totalc') +
  geom_bar(position='fill') +theme(legend.position="bottom")

Tc.Q6a3_18=ggplot(df.2018, aes(Q6_2A3,fill=new)) +
  labs(title = 'Totalc on q62a3', x = 'Totalc') +
  geom_bar(position='fill') +theme(legend.position="bottom")

Tc.Q6a1_18
Tc.Q6a2_18
Tc.Q6a3_18


#Q16 ?????? ???? ?? ��?? ?Լ? ????Ʈ 1,2,3 ?????? ????ǥ
q16.Q6a1_18=ggplot(df.2018, aes(Q6_2A1,fill=Q16)) +
  labs(title = 'Q16 on q62a1', x = 'Q16') +
  geom_bar(position='fill') +theme(legend.position="bottom")

q16.Q6a2_18=ggplot(df.2018, aes(Q6_2A2,fill=Q16)) +
  labs(title = 'Q16 on q62a2', x = 'Q16') +
  geom_bar(position='fill') +theme(legend.position="bottom")

q16.Q6a3_18=ggplot(df.2018, aes(Q6_2A3,fill=Q16)) +
  labs(title = 'Q16 on q62a3', x = 'Q16') +
  geom_bar(position='fill') +theme(legend.position="bottom")

q16.Q6a1_18
q16.Q6a2_18
q16.Q6a3_18
