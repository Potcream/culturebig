setwd('C:/Users/wnsdu/Downloads/competi')
list.files()
dfk.2018=read.csv('data2018dum2.csv',header=T,na.strings = 999)
df.2018=read.csv("choosed_data.csv",header=T,na.strings = 999)
str(df.2018)
df.united=read.csv("fu.united.csv",header = T,na.strings = 999)
df.2018nF=df.2018[50:51]
df.2018[1]=NULL
df.2018=select(dfk.2018,c(colnames(df.2018)[c(-50,-51)]),D_Q1)
df.2018=df.2018[which(complete.cases(df.2018)),]
df.2018=cbind(df.2018,df.2018nF)
str(df.united)
for (i in 1:33)
{
df.united[[i]]=as.factor(df.united[[i]])
  
}
str(df.united)
as.matrix(colnames(df.united))

for (i in c(3,4,24,25,26,27))
{
  df.united[[i]]=as.integer(df.united[[i]])
  
}
str(df.united)

for (i in 1:51)
{
  df.2018[[i]]=as.factor(df.2018[[i]])
  
}
str(df.2018)
as.matrix(colnames(df.2018))

for (i in c(1,6,7,23))
{
  df.2018[[i]]=as.integer(df.2018[[i]])
  
}
str(df.2018)

