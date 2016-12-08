\name{dat}
\alias{dat}
\docType{data}
\title{
The dataset "dat" is a data frame of closing prices for two stocks.
}
\description{
This dataset lists the closing prices of the public equity of Alphabet Inc. (Google, or GOOG) and Apple Inc. (AAPL), as well as the dates for
each closing price. The data is set up so that there are prices for the past year, or the past 252 trading days. The prices have been listed
in ascending dates, from 12/5/2015 to 12/7/2016, so that time since 12/5/2015 increases along the x axis when plotted. The column names are
"Date" for the dates and the ticker symbols for each respective stock, GOOG (for Alphabet Inc.) and AAPL (for Apple Inc.).
}
\usage{data("dat")}
\format{
  A data frame with 252 observations on the following 3 variables.
  \describe{
    \item{\code{Date}}{a factor with levels \code{1/11/2016} \code{1/12/2016} \code{1/13/2016} \code{1/14/2016} \code{1/15/2016} \code{1/19/2016} \code{1/20/2016} \code{1/21/2016} \code{1/22/2016} \code{1/25/2016} \code{1/26/2016} \code{1/27/2016} \code{1/28/2016} \code{1/29/2016} \code{1/4/2016} \code{1/5/2016} \code{1/6/2016} \code{1/7/2016} \code{1/8/2016} \code{10/10/2016} \code{10/11/2016} \code{10/12/2016} \code{10/13/2016} \code{10/14/2016} \code{10/17/2016} \code{10/18/2016} \code{10/19/2016} \code{10/20/2016} \code{10/21/2016} \code{10/24/2016} \code{10/25/2016} \code{10/26/2016} \code{10/27/2016} \code{10/28/2016} \code{10/3/2016} \code{10/31/2016} \code{10/4/2016} \code{10/5/2016} \code{10/6/2016} \code{10/7/2016} \code{11/1/2016} \code{11/10/2016} \code{11/11/2016} \code{11/14/2016} \code{11/15/2016} \code{11/16/2016} \code{11/17/2016} \code{11/18/2016} \code{11/2/2016} \code{11/21/2016} \code{11/22/2016} \code{11/23/2016} \code{11/25/2016} \code{11/28/2016} \code{11/29/2016} \code{11/3/2016} \code{11/30/2016} \code{11/4/2016} \code{11/7/2016} \code{11/8/2016} \code{11/9/2016} \code{12/1/2016} \code{12/10/2015} \code{12/11/2015} \code{12/14/2015} \code{12/15/2015} \code{12/16/2015} \code{12/17/2015} \code{12/18/2015} \code{12/2/2016} \code{12/21/2015} \code{12/22/2015} \code{12/23/2015} \code{12/24/2015} \code{12/28/2015} \code{12/29/2015} \code{12/30/2015} \code{12/31/2015} \code{12/5/2016} \code{12/7/2015} \code{12/8/2015} \code{12/9/2015} \code{2/1/2016} \code{2/10/2016} \code{2/11/2016} \code{2/12/2016} \code{2/16/2016} \code{2/17/2016} \code{2/18/2016} \code{2/19/2016} \code{2/2/2016} \code{2/22/2016} \code{2/23/2016} \code{2/24/2016} \code{2/25/2016} \code{2/26/2016} \code{2/29/2016} \code{2/3/2016} \code{2/4/2016} \code{2/5/2016} \code{2/8/2016} \code{2/9/2016} \code{3/1/2016} \code{3/10/2016} \code{3/11/2016} \code{3/14/2016} \code{3/15/2016} \code{3/16/2016} \code{3/17/2016} \code{3/18/2016} \code{3/2/2016} \code{3/21/2016} \code{3/22/2016} \code{3/23/2016} \code{3/24/2016} \code{3/28/2016} \code{3/29/2016} \code{3/3/2016} \code{3/30/2016} \code{3/31/2016} \code{3/4/2016} \code{3/7/2016} \code{3/8/2016} \code{3/9/2016} \code{4/1/2016} \code{4/11/2016} \code{4/12/2016} \code{4/13/2016} \code{4/14/2016} \code{4/15/2016} \code{4/18/2016} \code{4/19/2016} \code{4/20/2016} \code{4/21/2016} \code{4/22/2016} \code{4/25/2016} \code{4/26/2016} \code{4/27/2016} \code{4/28/2016} \code{4/29/2016} \code{4/4/2016} \code{4/5/2016} \code{4/6/2016} \code{4/7/2016} \code{4/8/2016} \code{5/10/2016} \code{5/11/2016} \code{5/12/2016} \code{5/13/2016} \code{5/16/2016} \code{5/17/2016} \code{5/18/2016} \code{5/19/2016} \code{5/2/2016} \code{5/20/2016} \code{5/23/2016} \code{5/24/2016} \code{5/25/2016} \code{5/26/2016} \code{5/27/2016} \code{5/3/2016} \code{5/31/2016} \code{5/4/2016} \code{5/5/2016} \code{5/6/2016} \code{5/9/2016} \code{6/1/2016} \code{6/10/2016} \code{6/13/2016} \code{6/14/2016} \code{6/15/2016} \code{6/16/2016} \code{6/17/2016} \code{6/2/2016} \code{6/20/2016} \code{6/21/2016} \code{6/22/2016} \code{6/23/2016} \code{6/24/2016} \code{6/27/2016} \code{6/28/2016} \code{6/29/2016} \code{6/3/2016} \code{6/30/2016} \code{6/6/2016} \code{6/7/2016} \code{6/8/2016} \code{6/9/2016} \code{7/1/2016} \code{7/11/2016} \code{7/12/2016} \code{7/13/2016} \code{7/14/2016} \code{7/15/2016} \code{7/18/2016} \code{7/19/2016} \code{7/20/2016} \code{7/21/2016} \code{7/22/2016} \code{7/25/2016} \code{7/26/2016} \code{7/27/2016} \code{7/28/2016} \code{7/29/2016} \code{7/5/2016} \code{7/6/2016} \code{7/7/2016} \code{7/8/2016} \code{8/1/2016} \code{8/10/2016} \code{8/11/2016} \code{8/12/2016} \code{8/15/2016} \code{8/16/2016} \code{8/17/2016} \code{8/18/2016} \code{8/19/2016} \code{8/2/2016} \code{8/22/2016} \code{8/23/2016} \code{8/24/2016} \code{8/25/2016} \code{8/26/2016} \code{8/29/2016} \code{8/3/2016} \code{8/30/2016} \code{8/31/2016} \code{8/4/2016} \code{8/5/2016} \code{8/8/2016} \code{8/9/2016} \code{9/1/2016} \code{9/12/2016} \code{9/13/2016} \code{9/14/2016} \code{9/15/2016} \code{9/16/2016} \code{9/19/2016} \code{9/2/2016} \code{9/20/2016} \code{9/21/2016} \code{9/22/2016} \code{9/23/2016} \code{9/26/2016} \code{9/27/2016} \code{9/28/2016} \code{9/29/2016} \code{9/30/2016} \code{9/6/2016} \code{9/7/2016} \code{9/8/2016} \code{9/9/2016}}
    \item{\code{GOOG}}{a numeric vector}
    \item{\code{FB}}{a numeric vector}
  }
}
\details{
 In using this dataset, one would be prudent to note that the "Date" column values are of type "integer", not of type "date". The functions
 in this package are designed to accommodate the format of data used when extracting stock prices from excel or Bloomberg, as in many cases
 where an analyst is conducting statistical analysis of stocks, the analysis is done through either of these two media. We note this to
 point out that this type of data is less compatible with time series and other plotting and analysis functions in R. To adjust for this,
 one might address the \code{as.Date()} functions in R.
}
\source{
yahoo.finance.com
}
\references{
}
\examples{
data(dat)
rel <- relative(dat) # stores the re-formatted price data into a data frame of relative returns for each stock
plot.relative(rel) # plots the relative returns for comparison

From the plot, one can discern that one stock had considerably greater returns since the beginning of the investment horizon being considered,
and its easy to see how the spread between the returns of the two stocks changes over time.
}
\keyword{datasets}
