lambda = 3

#5a
dexp(lambda)

#5b
par(mfrow = c(2, 2))
set.seed(1)
hist(rexp(10), main = "n = 10")
hist(rexp(100), main = "n = 100")
hist(rexp(1000), main = "n = 1000")
hist(rexp(10000), main = "n = 10000")

par(mfrow = c(1, 1))

#5c
rataan = lambda
rataan
varian = lambda*lambda
varian