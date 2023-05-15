alpha=0.01;alpha
a1=44;a1
n1=80;n1
a2=41;a2
n2=90;n2
p1=a1/n1;p1
p2=a2/n2;p2
P=(a1+a2)/(n1+n2);P
Q=1-P;Q
zstat=(p1-p2)/sqrt(P*Q*(1/n1+1/n2));zstat
ztab=qnorm(alpha/2,mean=0,sd=1,lower.tail=FALSE);ztab
if(zstat>ztab){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
pval=2*pnorm(zstat,lower.tail=FALSE);pval
if(pval<alpha){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
LCL=(p1-p2)-abs(ztab)*sqrt(P*Q*(1/n1+1/n2));LCL
UCL=(p1-p2)+abs(ztab)*sqrt(P*Q*(1/n1+1/n2));UCL
    
