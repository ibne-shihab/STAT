norm = rnorm(200,50,26);norm
exp = rexp(200,1/60);exp
n = length(norm);n
n1 = length(exp);n1
muhat = sum(norm)/n;muhat 
sigmahut = sqrt(sum((norm^2)-(muhat^2))/n);sigmahut
lambda = 1/mean(exp);lambda
alpha = 0.05;alpha
ztab = qnorm(alpha/2, mean = 0, sd = 1);ztab
LCL = 50-abs(ztab)*sqrt(26/n);LCL
UCL = 50+abs(ztab)*sqrt(26/n);UCL
ztab1 = qnorm(1-(alpha/2));ztab1
LCL1 = lambda - abs(ztab1)*(lambda/sqrt(n1));LCL1
UCL1 = lambda + abs(ztab1)*(lambda/sqrt(n1));UCL1 
var_exp = 1/(lambda^2);var_exp
var_exp1 = var(exp);var_exp1

