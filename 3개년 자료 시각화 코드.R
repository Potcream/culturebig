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

