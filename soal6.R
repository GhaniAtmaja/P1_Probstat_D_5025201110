# bagian a
n = 100
mean = 50
sd = 8
r = rnorm(n, mean, sd)
a = mean(r)

x1 = floor(a)
x2 = ceiling(a)
dn = pnorm(x2, mean, sd, lower.tail = TRUE) - pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)
z_score_x1 = (x1-mean)/sd
z_score_x2 = (x2-mean)/sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)

plot(r)

# bagian b
hist(r, breaks = 50, main="5025201110_MUhammad Ghani Taufiqurrahman Atmaja_D_DNhistogram")

# bagian c
#variance
var(rnorm(n, mean, sd))