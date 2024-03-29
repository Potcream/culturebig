as.matrix(colnames(df.united))

#???? Futve, q14, totalc ?? ???? ?ֱ? 3?? ?????? ??????????Ʈ ????
rf.unit.F=randomForest(x=df.united[,c(-33,-32,-24,-19,-1,-2)],y=factor(df.united[,33]),data=df.united)
rf.unit.q14=randomForest(x=df.united[,c(-33,-32,-24,-19,-1,-2)],y=factor(df.united[,19]),data=df.united)
rf.unit.tc=randomForest(x=df.united[,c(-33,-32,-24,-19,-1,-2)],y=factor(df.united[,32]),data=df.united)
rf.unit.F
rf.unit.q14
rf.unit.tc

#?? ��?Ӻ????? ???? ???????? ?߿䵵 ?׷???(???? ?Ҽ??? ???? ????)
pl.uniF=varImpPlot(rf.unit.F)
pl.uniq14=varImpPlot(rf.unit.q14)
pl.unitc=varImpPlot(rf.unit.tc)

list.of.unipl=c(pl.uniF,pl.uniq14,pl.unitc)


nat1617=read.csv("for.Q16.csv",header=T,na.strings = 999)

Fu.19a3_uni=ggplot(df.united,aes(x=Futve, y=mtzq19a3, fill=mtzq19a3,na.rm=T)) + geom_boxplot()
Fu.19a5_uni=ggplot(df.united,aes(x=Futve, y=mtzq19a5, fill=mtzq19a5,na.rm=T)) + geom_boxplot()
Fu.19a1_uni=ggplot(df.united,aes(x=Futve, y=mtzq19a1, fill=mtzq19a1,na.rm=T)) + geom_boxplot()

Fu.19a3_uni
Fu.19a5_uni
Fu.19a1_uni


Fu.ch_uni=ggplot(df.united, aes(chasu,fill=Futve)) +
  labs(title = 'Futve on chasu', x = 'Futve') +
  geom_bar(position='fill') +theme(legend.position="bottom")

F.na_uni=ggplot(df.united, aes(nat,fill=Futve)) +
  labs(title = 'Futve on nat', x = 'Futve') +
  geom_bar(position='fill') +theme(legend.position="bottom")

F.6a3_uni
F.6a2_uni
F.6a1_uni
q14.6a3
F.6a3_uni=ggplot(df.united, aes(q6a3,fill=Futve)) +
  labs(title = 'Futve on q6a3', x = 'q6a3') +
  geom_bar(position='fill') +theme(legend.position="bottom")
F.6a2_uni=ggplot(df.united, aes(q6a2,fill=Futve)) +
  labs(title = 'Futve on q6a2', x = 'q6a2') +
  geom_bar(position='fill') +theme(legend.position="bottom")
F.6a1_uni=ggplot(df.united, aes(q6a1,fill=Futve)) +
  labs(title = 'Futve on q6a1', x = 'q6a1') +
  geom_bar(position='fill') +theme(legend.position="bottom")



q14.6a3_uni=ggplot(df.united, aes(nat,fill=q14)) +
  labs(title = 'q14 on nat', x = 'q14') +
  geom_bar(position='fill') +theme(legend.position="bottom")


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


#Q16 재방문 의도???? ?? ��?? ?Լ? ????Ʈ 1,2,3 ?????? ????ǥ
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

