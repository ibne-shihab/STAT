xbar=38100;xbar
n=48;n
sd=5200;sd
mu=37000;mu
alpha=0.05;alpha
zstat=(xbar-mu)/(sd/sqrt(n));zstat
ztab=qnorm(alpha,mean=0,sd=1,lower.tail=FALSE);ztab
if(zstat>ztab){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
pval=pnorm(zstat,lower.tail=FALSE);pval
if(pval<alpha){
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}
CI=xbar-ztab*sd/sqrt(n);CI
