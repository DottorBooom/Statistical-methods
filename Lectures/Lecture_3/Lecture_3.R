## Build.in functions in R to work with rvs ------------------------------------
?dnorm #pdf/pmf
?pnorm #cdf
?qnorm #quantile
?rnorm #random numbers generation

## pdf, cdf, quantile f ----

# theoretical
par(mfrow=c(1,3))
curve(dnorm(x), col = "gold", lwd = 2, from = -4, to = 4) # plot probability density functuon of normal distribution
curve(pnorm(x), from = -4, to = 4, col = "gold", lwd = 2) # plot the comulative distribution function of normal distribution
curve(qnorm(x), col = "gold", lwd = 2) # plot the quantile function of normal distribution

# empirical 

# remember to set seed if the result have to be the same
#set.seed(999)
?cumsum # it returns a vector whose elements are the cumulative sums

par(mfrow = c(1,3))
xx <- rnorm(100)
hist(xx, prob = T)
plot(sort(xx), cumsum(rep(1/length(xx), length(xx))), pch = 20)
plot(cumsum(rep(1/length(xx), length(xx))), sort(xx), pch = 20)

par(mfrow = c(1,3))
xx <- rnorm(100)
hist(xx, prob = T)
curve(dnorm(x), col = "gold", add = T, lwd = 2, from = -4, to = 4)
# After overlapping, we see that the curve follow the hinstogram. 
# That's because the population have not enough value to reproduce the
# theoretical normal distribution. 

plot(sort(xx), cumsum(rep(1/length(xx), length(xx))), pch = 20)
curve(pnorm(x), from = -4, to = 4, add = T,  col = "gold", lwd = 2)
p <- 0.25 # first quantile
abline(h=p, lty=2, col="red")
abline(v=qnorm(p), lty=2, col="red") # the value that the cumulative distribution function assume when give 0.25

# F(x) = 0.25 --> F^-1(0.25) = x

plot(cumsum(rep(1/length(xx), length(xx))), sort(xx),  pch = 20)
curve(qnorm(x), col = "gold", lwd = 2, add = T)
p <- 0.25
abline(h=qnorm(p), lty=2, col="red")
abline(v=p, lty=2, col="red")


## qqplot normal vs student-t  -------------------------------------------------
set.seed(123)
par(mfrow=c(1,2))
x <- rt(1000,2);
qqnorm(x, pch = 16, main = "")
qqline(x)

y <- rnorm(1000)
qqnorm(y, pch = 16, main = "")
qqline(y)

# As we expect, the student-t distribution have very havy tails. Reducing
# the value will allow the student-t to approch the normal distribution.

## Inversion sampling: Simulate a Normal(5,4) from a Unif
par(mfrow=c(1,1))
y <- runif(10^4); x <- qnorm(u, m = 5, s = 2)
par(pty = "s",  cex = 0.8)
qqnorm(x, pch = 16, main = "")
qqline(x)


### EXERCISE -------------------------------------------------------------------
## Compute P(X = 0) for X ∼ Pois(3) --------------------------------------------

dpois(0, 3)

## Compute P(X = x) for X ∼ Pois(3), for x = 0,1,...,5 -------------------------

x = 0:5
ppois(x, 3)

## Make a plot of the Poisson p.m.f. with lambda = 3 and for x=0,...20----------

par(mfrow=c(1,2))
plot(0:20, dpois(0:20, 3), pch=20, col='blue')
plot(0:20, dpois(0:20, 3), pch=20, "h")

## Explore how the p.m.f. of a Poisson rv changes varying lambda ---------------

par(mfrow = c(2,3))
plot(0:20, dpois(0:20, 1) , pch = 20, col="red", "h")
plot(0:20, dpois(0:20, 2) , pch = 20, col="blue", "h")
plot(0:20, dpois(0:20, 5) , pch = 20, col="green", "h")

plot(0:20, dpois(0:20, 10) , pch = 20, col="purple" , "h")
plot(0:20, dpois(0:20, 20) , pch = 20, col="brown", "h")
plot(0:20, dpois(0:20, 100) , pch = 20, col="black", "h")

## Compare a random sample from a Poisson with the theoretical quantiles--------

set.seed(123)
par(mfrow = c(1,1))
xx <- rpois(10, 3)
plot(ecdf(xx))
points(sort(xx), 1:10/10, pch = 20, type="s")
points(0:6, ppois(0:6,3), col="red", lwd=2, type="s")
d
n <- 10000
xx <- rpois(n,3)
plot(ecdf(xx))
points(sort(xx), 1:n/n, pch = 20, type="s")
points(0:n, ppois(0:n,3), col="red", lwd=2, type="s")

## Repeat the points above with another continuous rv of your choice

## Inversion sampling: Simulate a Gamma(shape = 5, scale = 4) from a Unif
## compare the simulated data with the theoretical distribution using a qqplot

par(mfrow=c(1,1))
y <- runif(10^4); x <- qgamma(y, 5, scale = 4)
par(pty = "s",  cex = 0.8)
qqnorm(x, pch = 16, main = "")
qqline(x)
