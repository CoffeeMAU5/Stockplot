relative <-
function(prices) {
  x <- prices[,2]; x.ret <- (x/x[1] - 1)
  y <- prices[,3]; y.ret <- (y/y[1] - 1)
  rng <- seq(1:length(prices[,2]))
  returns <-data.frame(cbind(rng, x.ret, y.ret))
  colnames(returns)[1] <- c("Date")
  return(returns)
}
