\name{plot.relative}
\alias{plot.relative}
\alias{relative}
\alias{dat}
\alias{returns}
\title{
Plot overall returns of one stock versus another
}
\description{
\code{plot.relative()} is a plotting function tailored specifically to plot the output from the \code{relative()} function in this package. There isn't any readily available function to easily compute this specific objective of overall returns over any investment horizon from daily closing prices, which is often a basic value to analyze over time for investors. This function is an attempt to do this in a simple scenario of comparing two stocks and their returns.
}
\usage{
  \code{plot.relative(returns)}
}

\arguments{
  \item{returns}{
  \code{returns} is the output from the \code{relative()} function, or any data that follows the same format as this output.
}
}
\details{
Plotting these separate time series against each other provides a quick and easy comparison of one stock's performance versus another's over the user-specified investment horizon. Any aspects of the resulting plot (horizontal and vertical bounds, colors, symbols, legend, etc.) can be adjusted after the function-defined plot is made, if so desired.
}
\value{
Output is a plot of two separate lines showing overall returns on each of the dates listed in the \code{returns} input argument. The area between the line and the \code{x = 0} horizontal axis is shaded in blue for the first stock and green for the second.
}
\author{
Villegas, J.G.
}
\note{
Easiest and most convenient use of \code{plot.relative()} is to use the output of \code{relative()} as the argument. Users can also supply a data frame of dates and overall returns of two stocks that has the same formatting as that defined in \code{relative}.

}
\examples{

## The function is currently defined as
plot.relative <- function(returns) 
{
    attach(returns)
    start_date <- as.Date(dat[1, 1], "\%m/\%d/\%Y")
    matplot(Date, returns[, 2:3], pch = ".", col = c("black", 
        "black"), main = paste(c("Relative Returns of "), colnames(dat)[2], 
        c(" and "), colnames(dat[3])), xlab = paste(c("Days since "), 
        start_date), ylab = paste(c("Returns since "), start_date))
    polygon(c(Date, rev(Date)), c(x.ret, rev(rep(0, length(x.ret)))), 
        col = "blue")
    polygon(c(Date, rev(Date)), c(y.ret, rev(rep(0, length(y.ret)))), 
        col = "green")
    lines(Date, x.ret, col = "black")
    lines(Date, y.ret, col = "black")
    abline(coef = c(0, 0))
    legend("topleft", c(colnames(dat)[2], colnames(dat)[3]), 
        col = c("blue", "green"), lty = 1)
  }
}

# Fastest application of \code{relative()} and \code{plot.relative()} functions could follow this format:
# plot.relative(relative(prices))

