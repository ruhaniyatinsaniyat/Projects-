n = 1875
p = 0.0032
# Random samples from Binomial distribution (n,p)
b_rs1 = rbinom(300, n, p) 
b_rs2 = rbinom(600, n, p) 
b_rs3 = rbinom(1200, n, p) 
# Frequency distribution tables
bins = seq(0,14,2)
x1 = table(cut(b_rs1, bins))
df1 = as.data.frame(x1); colnames(df1) = c("x", "Frequency") 
x2 = table(cut(b_rs2, bins))
df2 = as.data.frame(x2); colnames(df2) = c("x", "Frequency") 
x3 = table(cut(b_rs3, bins))
df3 = as.data.frame(x3); colnames(df3) = c("x", "Frequency") 
# Printing the frequency distribution tables
df1; df2; df3
# Histograms for each random sample
hist(b_rs1, xlab = "X",breaks = 13, main = "Random sample of size 300 from B(n=1875, p=0.0032)", col = "blueviolet", border = "black")
hist(b_rs2, xlab = "X",breaks = 13, main = "Random sample of size 600 from B(n=1875, p=0.0032)", col = "darkgoldenrod1", border = "black")
hist(b_rs3, xlab = "X",breaks = 13, main = "Random sample of size 1200 from B(n=1875, p=0.0032)", col = "forestgreen", border = "black")
#Draw a random sample from Poisson distribution with lambda = 6
p_rs = rpois(1000,6)
x4 = table(p_rs)
df4 = as.data.frame(x4); colnames(df4) = c("x", "Frequency") 
hist(p_rs, xlab = "X",breaks = 13, main = "Poisson random sample", col = "dodgerblue", border = "black")
#Stack all histograms (3 from Binomial and 1 from Poisson in one graph)
par(mfrow=c(2,2))
hist(b_rs1, xlab = "X",breaks = 13, main = "Binomial Random sample of size 300", col = "blueviolet", border = "black")
hist(b_rs2, xlab = "X",breaks = 13, main = "Binomial Random sample of size 600", col = "darkgoldenrod1", border = "black")
hist(b_rs3, xlab = "X",breaks = 13, main = "Binomial Random sample of size 1200", col = "forestgreen", border = "black")
hist(p_rs, xlab = "X",breaks = 13, main = "Poisson random sample", col = "dodgerblue", border = "black")
# Q-Q plot of frequency distribution of random sample from Poisson distribution
#par(mfrow=c(1,1))
qqnorm(p_rs)
qqline(p_rs, col = "blue")
#upper end of the Q-Q plot to deviate from the straight line and the lower and 
#follows a straight line then the curve has a longer till to its right and it is 
#right-skewed (or positively skewed).
