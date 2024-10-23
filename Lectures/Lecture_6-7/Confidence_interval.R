# Assuming Xi ~ N(mu, signa) and let sigma = 5, n = 100 and xbar = 6 ne
# the standard deviation, the sample size and the sample mean, respectively.
# What is the C.I. of level 1 - alpha = 0.957

sigma <- 5
n <- 100
xbar <- 6
alpha <- 1 - 0.025

lower_bound <- xbar - qnorm(alpha)*sigma/sqrt(n) # this is the lower bound
upper_bound <- xbar + qnorm(alpha)*sigma/sqrt(n) # upper bound

# or the compact way

xbar + qnorm(alpha)*sigma/sqrt(n)*c(-1,1)

# Let's play a bit, what if we use n = 200. What do u expect from the change
# of the confident interval?
# It's in the denominator and if the denominator increases the value of the 
# fraction decreases and the confident interval become narrower 

n = 200
xbar + qnorm(alpha)*sigma/sqrt(n)*c(-1,1)

# Now, let's say that n = 10. If we know what sigma is we do not have problems.
# But what if we don't know? We take it as an estimate S: what do we change? 
# The distribution of the quantile, instead the qnorm I use the qt leaving the 
# same confidence level.

# we miss the confidence parameter: number of degrees of freedom. The value is
# n-1.

S = 5 # some value we obtain by parameters
n = 10
xbar + qt(alpha, 9)*S/sqrt(n)*c(-1,1)

# Assuming that we know that the variance is
n = 10
xbar + qnorm(alpha)*sigma/sqrt(n)*c(-1,1)

# we obtain a narrower limit. 
# Remember, because knowing signa or not make the difference

M <- 100000; n <- 10; mat.ci <- matrix(NA, nrow = M, ncol = 2)
for(i in 1:M) { y <- rnorm(n, 5) 
  se_t <- sqrt(var(y) / n) * qt(0.975, n-1)
  mat.ci[i,] <- mean(y) + se_t * c(-1, 1)}

# we are extracting the boolen matrix that contain true where the value respect
# the condition. Then we make a mean and obtain a value that is very close to
# 1 - alpha.
mean(mat.ci[,1] < 5 & mat.ci[,2] > 5) 

# We can visualize the rappresentation (of the first 20 value) that could 
# include mu. Maybe increasing value will change, it depends. But on average 
# that's the result we expect.
plot(rep(5, 20), 1:20, pch = 16, ylab="Sample",
     xlab=expression(mu))
for(i in 1:20) segments(mat.ci[i,1],i,mat.ci[i,2],i)

# Now, we try so approximate the distribution and compute the intervals

M <- 100000; n <- 10; mat.ci <- matrix(NA, nrow = M, ncol = 2)
for(i in 1:M) { y <- rnorm(n, 5)
  se_z <- sqrt(var(y) / n) * qnorm(0.975)
  mat.ci[i,] <- mean(y) + se_z * c(-1, 1)}
mean(mat.ci[,1] < 5 & mat.ci[,2] > 5)

M <- 100000; n <- 100; mat.ci <- matrix(NA, nrow = M, ncol = 2)
for(i in 1:M) { y <- rnorm(n, 5)
  se_z <- sqrt(var(y) / n) * qnorm(0.975)
  mat.ci[i,] <- mean(y) + se_z * c(-1, 1)}
mean(mat.ci[,1] < 5 & mat.ci[,2] > 5)

# In the last example, we should have use t distribution for a better
# approximation

# Exercise about confidence interval of Ci proportions
# The proportion of bordn male or female is expected to be 50/50, but in reality
# is more like 51/49 for male.

# Data from Muggia (Ts)

n <- 85
x <- 38 # number of male

x/n

# Data from Friuli Venezia Giulia

n <- 10337
x <- 5286

x/n

# The value is getting close to the one we expect
# Data from Italy

n <- 561994
x <- 289185

x/n

# We want to build a confident interval for all 3 groups:

n <- 85
x <- 38 
pihat <- x/n
pihat + qnorm(0.975)*sqrt(pihat*(1-pihat)/n)*c(-1,1) 

# This could be a true value

n <- 10337
x <- 5286
pihat <- x/n
pihat + qnorm(0.975)*sqrt(pihat*(1-pihat)/n)*c(-1,1) 

# We increase the sample size and the confidence interval does not include
# 0.5 as value

n <- 561994
x <- 289185
pihat <- x/n
pihat + qnorm(0.975)*sqrt(pihat*(1-pihat)/n)*c(-1,1) 

# And in the last one we obtain a very precise estimate of the male/female value

M <- 100000; n <- 50; mat.ci <- matrix(NA, nrow = M, ncol = 2)
for(i in 1:M) { y <- rbinom(n, size = 1, prob = 0.25)
  p.hat <- mean(y)
  se_z <- sqrt(p.hat * (1 - p.hat) / n)
  se_qz <- se_z * qnorm(0.975)
  mat.ci[i,] <- mean(y) + se_qz * c(-1, 1)}


mean(mat.ci[,1] < 0.25 & mat.ci[,2] > 0.25)
