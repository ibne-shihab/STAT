X=c(160,165,159,164,168,155,158,155,152,159,158,154,153,152,154);X
Y=c(70,72,64,63,72,65,62,56,56,60,58,58,55,56,60);Y
n=length(X);n
data=cbind(X,Y);data
m=data.frame(X,Y);m
write.csv(data,'G:/Pabna University of Science and Technology/data 6.csv')
alpha=0.05;alpha
reg=lm(m$Y~m$X,m);reg
summary(reg)
r=cor(X,Y);r
tcal=r*sqrt(n-2)/(1-r^2);tcal
ttab=qt(alpha/2,n-2);ttab
if(abs(tcal)>abs(ttab)){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
pval=2*pt(tcal,n-2,lower.tail=FALSE);pval
if(pval<alpha){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}

