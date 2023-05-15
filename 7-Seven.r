temp1 = c(32, 34, 31, 33, 35, 36, 34, 34, 34, 35, 32, 33, 33, 33, 32, 32, 34, 33, 32, 34, 32, 31, 33, 34, 35, 34, 33, 33, 33, 34, 34);temp1
temp2 = c(34, 34, 35, 35, 35, 35, 35, 35, 36, 37, 34, 33, 34, 35, 34, 34, 36, 34, 33, 34, 32, 33, 34, 36, 35, 35, 35, 34, 35, 34, 35);temp2
data = cbind(temp1, temp2);data
write.csv(data, "G:\\Pabna University of Science and Technology\\data1.csv")

alpha = 0.05;alpha
n1 = length(temp1);n1
n2 = length(temp2);n2
xbar1 = mean(temp1);xbar1
xbar2 = mean(temp2);xbar2
sd1 = sd(temp1);sd1
sd2 = sd(temp2);sd2

zstat = (xbar1 - xbar2) / sqrt((sd1^2 / n1) + (sd2^2 / n2));zstat
ztab = qnorm(alpha / 2, mean = 0, sd = 1);ztab

if (abs(zstat) > abs(ztab)) {
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}

pval = 2 * pnorm(abs(zstat));pval

if (pval < alpha) {
    print("Null hypothesis is rejected")
} else {
    print("Null hypothesis is accepted")
}

boxplot(temp1, temp2, main = "Box plot", xlab = "Month", ylab = "Temperature")

LCL = (xbar1 - xbar2) - abs(ztab) * sqrt((sd1^2 / n1) + (sd2^2 / n2));LCL
UCL = (xbar1 - xbar2) + abs(ztab) * sqrt((sd1^2 / n1) + (sd2^2 / n2));UCL

