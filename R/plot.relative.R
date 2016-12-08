plot.relative <-
function(returns) {
  attach(returns)
  start_date <- as.Date(dat[1,1], "%m/%d/%Y")
  matplot(Date, returns[,2:3], pch=".", col=c("black", "black"),
          main=paste(c("Relative Returns of "), colnames(dat)[2], c(" and "), colnames(dat[3])),
          xlab=paste(c("Days since "), start_date), ylab=paste(c("Returns since "), start_date))
  
  polygon(c(Date, rev(Date)), c(x.ret, rev(rep(0, length(x.ret)))), col="blue")
  polygon(c(Date, rev(Date)), c(y.ret, rev(rep(0, length(y.ret)))), col="green")
  
  lines(Date, x.ret, col="black")
  lines(Date, y.ret, col="black")
  
  abline(coef=c(0,0))
  legend("topleft", c(colnames(dat)[2], colnames(dat)[3]), col=c("blue", "green"), lty=1)
  
}
