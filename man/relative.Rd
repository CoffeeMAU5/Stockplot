\name{relative}
\alias{relative}
\alias{plot.relative}
\alias{dat}
\alias{returns}
\title{
Format stock prices into returns
}
\description{
The \code{relative()} function is used to transform the stock price data into overall returns data from the first date indicated. Overall returns
are calculated by taking the quotient of the price on any day after the first date with the price on the first date, then subtracting one. This result
is a decimal that can easily be interpreted as a percent gain or loss, depending on whether the stock has increased or decreased in price.
}
\usage{
\code{relative(prices)}
}
\arguments{
  \item{prices}{
  prices are the historical daily closing prices of the two stocks being considered, as well as the date for each closing price
}
}
\details{
Input \code{prices} must be a \code{data.frame} in the following format:
- 1st column: Dates, going from earliest date to most recent date
- 2nd column: Daily closing prices of stock 1
- 3rd column: Dailu closing prices of stock 2

Input \code{prices} must have column names, the first referring to the date, and the second and third indicating the names of stocks 1 and 2.
}
\value{
Value returned from \code{relative()} is a data frame named \code{returns} of three columns: one of integers indicating the number of days since the first indicated date, and two more indicating the overall returns for each stock. This \code{returns} data frame is used as the input in the \code{plot.relative()} function.
}
\author{
Villegas, J.G.
}
\note{
Output of \code{relative()} can be saved as a separate object, which the user can perform their own analysis on if so desired.
}

\seealso{
\code{\link{http://www.investopedia.com/ask/answer/07/portfolio_calculations.asp}}
}
\examples{

## The function is currently defined as
relative <- function(prices) 
  {
    x <- prices[, 2]
    x.ret <- (x/x[1] - 1)
    y <- prices[, 3]
    y.ret <- (y/y[1] - 1)
    rng <- seq(1:length(prices[, 2]))
    returns <- data.frame(cbind(rng, x.ret, y.ret))
    colnames(returns)[1] <- c("Date")
    return(returns)
  }
}

