T = 400  #K
p = 200  #barr
c6 = 0.00060696
c5 = 0.0033566
c4 = -0.058757
c3 = 1.0306
c2 = 7.5884
c1 = 33.258
# c1 p + c2 p^2 + c3 p^3 + c4 p^4 + c5 p^5 + c6 p^6 = P
roots = polyroot(c(c1,c2,c3,c4,c5,c6))
cat("Propane gas Volumes: ", roots, "\n")
