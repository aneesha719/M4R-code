library(stats)

# Generate two samples
samp1 <- rnorm(30, 0.5, 1)
samp2 <- rnorm(30, 0, 1)

# pool samples
pooled_sample <- c(samp1, samp2)

# equidistance points over domain
xvals <- seq(min(pooled_sample), max(pooled_sample), length.out = 30)

# ecdf of sample 1
edcf1 <- ecdf(samp1)
ecdf_vals1 <- edcf1(xvals)

# ecdf of sample 2
edcf2 <- ecdf(samp2)
ecdf_vals2 <- edcf2(xvals)


# Plotting two ecdfs
plot(xvals, ecdf_vals1, type = "s", col = "blue", lwd = 2, xlab = "x", 
     ylab = "ecdf", xlim = c(xvals[1] , xvals[30]))
lines(xvals, ecdf_vals2, type = "s", col = "red", lwd = 2)
grid()