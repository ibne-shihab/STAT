(1)
X=c(5.9,7.2,7.3,6.3,8.1,6.8,7.0,7.6,6.8,6.5,7.0,6.3,7.9,9.0,8.2,8.7,7.8,9.7,7.4,7.7,9.7,7.8,7.7,11.6,11.3,11.8,10.7);X 
Y=c(6.1,5.8,7.8,7.1,7.2,9.2,6.6,8.3,7.0,8.3,7.8,8.1, 7.4,8.5,8.9,9.8,9.7,14.1,12.6,11.2);Y 
Xbar=mean(X);Xbar
Ybar=mean(Y);Ybar
dif=abs(Xbar-Ybar);dif

(2)
Xvar=var(X);Xvar
Yvar=var(Y);Yvar
n1=length(X);n1
n2=length(Y);n2
SE.dif=sqrt((Xvar/n1)+(Yvar/n2));SE.dif

(3)
ratio=sqrt(Xvar)/sqrt(Yvar);ratio

(4)
var.dif=Xvar+Yvar;var.dif
