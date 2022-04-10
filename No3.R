#3.a
lambda = 4.5
X <- 6
poiss1 <- dpois(X,Lambda)
poiss1

#3.b
N <- 365
poiss2 <- rpois(N,Lambda)
hist(poiss2,main = "Grafik histogram distribusi poisson kelahiran 6 bayi selama 1 tahun")

#3.c


#3.d
rataan = varian = lambda
rataan
varian