(1)
data=c(2,4,6,8);data
sample.data=rbind(c(2,2),c(2,4),c(2,6),c(2,8),c(4,2),c(4,4),c(4,6),c(4,8),c(6,2),c(6,4),c(6,6),c(6,8),c(8,2),c(8,4),c(8,6),c(8,8));sample.data
pop.mean=mean(data);pop.mean
yibar=rowMeans(sample.data);yibar
E.ybar=sum(yibar*(1/16));E.ybar

(2)
E.yibar2=sum((yibar^2)*(1/16));E.yibar2
v.ybar=E.yibar2-(E.ybar)^2;v.ybar
N=length(data);N
n=2;n
var=var(data);var
sigma2=var*(N-1)/N;sigma2
RHS=(sigma2/n)*((N-n)/(N-1));RHS

(3)
s2=(sample.data[,1]-yibar)^2+(sample.data[,2]-yibar)^2;s2
E.s2=sum(s2*(1/16));E.s2

(4)
alpha=0.05;alpha
ztab=qnorm(alpha/2,mean=0,sd=1);ztab
LCL=pop.mean-abs(ztab)*sqrt(var/N);LCL
UCL=pop.mean+abs(ztab)*sqrt(var/N);UCL
total=pop.mean*N;total
vartotal=N^2*sigma2;vartotal
LCLt=total-abs(ztab)*sqrt(vartotal/N);LCLt
UCLt=total+abs(ztab)*sqrt(vartotal/N);UCLt

