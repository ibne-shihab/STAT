data = c(0.46,0.38,0.61,0.82,0.59,0.53,0.72,0.44,0.58,0.60,0.73,0.55,0.23,0.62,0.38,0.27,0.36,0.47,0.49,0.71);data
n = length(data);n
xbar = sum(data)/n;xbar
theta = 1/xbar;theta
alpha = 0.05;alpha
ztab = qnorm(1-(alpha/2));ztab
LCL = theta - abs(ztab)*(theta/sqrt(n));LCL
UCL = theta + abs(ztab)*(theta/sqrt(n));UCL
var_theta = 1/theta^2;var_theta
