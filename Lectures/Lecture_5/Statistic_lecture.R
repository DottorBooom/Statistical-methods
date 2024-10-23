# Let's try to predict our first model

?htemp

# We want to explain some variability of this sample of data

# It's in Fahrenheit, we subtract 32 and divide by 1.8 for converting to celsius
y <- (nhtemp - 32)/1.8 #Average Yearly Temperatures in New Haven
plot(1912:1971, y, pch=16, xlab="Year", ylab="y") 

# It's not very clear about a correlation, but we can change rappresentation
# We try with an histrogramm (allowing to observe a symmetry) for find some other correlation

hist(y)

# This is our first "model"

# In fact, it seems to have some kind of simmetry. So, we try
# with the normal distribution for see some kind of correlation

# The mean and variance I directly compute them from the data
curve(dnorm(x, (mean(y)), sqrt(var(y))), add=T, col="red")

# But it's very "low", that's because y label on the hinstogram rappresent the 
# number of occurency. We want the probability. We switch the rappresentation again

hist(y, prob = T)
curve(dnorm(x, (mean(y)), sqrt(var(y))), add=T, col="red")

# This is much better and in some way it can be approximate with a normal distribution

# Let's try to make another assumption with qqplot, a qqnorm cause we assume a normal
# distribution

qqnorm(y)
qqline(y)

# Another possible model we assume, based on what we see, is the t distribution.
# Problem: about the number of degrees of freedom is not very easy to select and 
# we don't have a clear referenc from the model on the data. 
# Probably a small number (we choose 5) because the tails are not too havy

# cComing back to the plot, you can notice ther's some kind of linear correlation
plot(y, type = "p")
abline(h=mean(y))

# You can notice that the left side is lightly under the mean and the right side is 
# slightly above, it's increasing over time.
# So we assume as the third model sa linear regression

years <- 1:60
data <- data.frame(years, y)

model <- lm(y ~ years, data = data)
model

plot(data$years, data$y, type = "p", pch = 16, col = "blue")
abline(model, col = "red")

# Here the coefficents of the model and the line that rappresent the increasing
# of the value over time.
