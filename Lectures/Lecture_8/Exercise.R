########################################
# Exercise elections
# Compute ME
########################################
n <- 1000
1.96 * sqrt(0.5*(1-0.5)/n)

n <- 2000
1.96 * sqrt(0.5*(1-0.5)/n)

n <- 5000
1.96 * sqrt(0.5*(1-0.5)/n)

# Her's how the ME change based on the value of n
plot(500:5000, 1.96 * sqrt(0.5*(0.5)/500:5000))

# What value value we need for n to reduce the error under 0.01: 
(1.96 * sqrt(0.5*(1-0.5))/0.01)^2

########################################
# Exercise polio
########################################

var.pi1 <- 0.00016 * (1-0.00016)/200745
var.pi2 <- 0.00057 * (1-0.00057)/201289

(0.00016 - 0.00057) + c(-1,1)*qnorm(0.975)*sqrt(var.pi1+var.pi2)

# If we change the value of the quintile (ergo the confidence intervalle)
# the value doens't change to much

(0.00016 - 0.00057) + c(-1,1)*qnorm(0.995)*sqrt(var.pi1+var.pi2)

# Alwayse remember to check the assumption, because for example in this case
# we have an estimated pie that is very very samll. We are using an aproximate 
# confidence intervall and it's very large, but pie it so small that you
# alwayse have to check check the convergence of the binomial distribution
# to the normal.