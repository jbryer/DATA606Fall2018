pop <- runif(1000)
hist(pop)
mean(pop)

samp1 <- sample(pop, 100)
hist(samp1)
mean(samp1)

samp2 <- sample(pop, 100)
hist(samp2)
mean(samp2)

samp1

# Simple boot strap for the mean
boots <- numeric(1000)
for(i in 1:length(boots)) {
	boot.sample <- sample(samp1, length(samp1), replace = TRUE)
	boots[i] <- mean(boot.sample) # Change mean to median to get a bootstrap sample for the median
}
length(boots)
head(boots)

hist(boots)
mean(boots)
c(mean(boots) - 1.96 * sd(boots), mean(boots) + 1.96 * sd(boots))
