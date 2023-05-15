data=read.csv(file.choose());data
math=data[,3];math
stat=data[,2];stat
sd_math=sd(math);sd_math
sd_stat=sd(stat);sd_stat
alpha=0.05;alpha
Fcal=sd_math^2/sd_stat^2;Fcal
Ftab=qf(alpha,df1=19,df2=19,lower.tail="FALSE");Ftab
if(Fcal>Ftab){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
pval=1-pf(Fcal,df1=19,df2=19,lower.tail="FALSE");pval
if(pval<alpha){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}

