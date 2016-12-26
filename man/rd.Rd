\name{rd}
\alias{rd}

\title{
Compute random data from a distribution
}
\description{
This function creates random data from any usual univariate distribution in \code{R}. 
Unlike the common methods for creating random data from a distribution (such as \code{rnorm}, \code{rpois} and etc.), the name of the introduced function is fix for any distribution and the name of distribution is considered as an argument in \code{rd} function. 
Therefore creating random data by \code{rd} function is applicable for any kind of distribution with an unique function form but by considering the name of \eqn{T} distribution (and its parameters) as two arguments of \code{rd} function. 
}
\usage{
rd(n, T.dist, T.dist.par)
}

\arguments{
  \item{n}{
The number of random observations which must be created from the considered distribution in argument part.
}
  \item{T.dist}{
The distribution name of the random variable is determined by characteristic element \code{T.dist}. The names of distributions is similar to \code{stats} package.
}
  \item{T.dist.par}{
A vector of distribution parameters with considered ordering in \code{stats} package.
}
}


\value{
This function will create \code{n} random data from the considered distribution.
}

\examples{
rd(n=10, T.dist="norm", T.dist.par=c(0,1)) # Is equal to  rnorm(10)
rd(25, T.dist="pois", T.dist.par=3.3) # Is equal to  rpois(25,3.3)

## The function is currently defined as
function (n, T.dist, T.dist.par) 
{
    rDis = paste("r", T.dist, sep = "", collapse = "")
    if (length(T.dist.par) == 1) {
        rd.t = do.call(rDis, list(n, T.dist.par[1]))
    }
    else {
        if (length(T.dist.par) == 2) {
            rd.t = do.call(rDis, list(n, T.dist.par[1], T.dist.par[2]))
        }
        else {
            rd.t = do.call(rDis, list(n, T.dist.par[1], T.dist.par[2], 
                T.dist.par[3]))
        }
    }
    return(rd.t)
  }
}


\keyword{ pdf }
\keyword{ cdf }
\keyword{ q }
\keyword{ package stats }
