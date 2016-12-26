\name{cdf}
\alias{cdf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cumulative density function (cdf)
}
\description{
This function compute the Cumulative Density Function (cdf) value of any univariate distribution in point \eqn{t}, i.e. \eqn{P(T \leq t)}. 
Unlike the common cdf's of other distributions (such as \code{pnorm}, \code{ppois} and etc.) the name of the introduced \code{cdf} function is fix in which the name of distribution is considered as an argument. 
So the \code{cdf} function is applicable for any kind of distribution with a unique form but by considering the name of distribution as a parameter (argument) of \code{cdf} function. 
}
\usage{
cdf(T.dist, T.dist.par, t)
}
\arguments{
  \item{T.dist}{
The distribution name of the random variable is determined by characteristic element \code{T.dist}. The names of distributions is similar to \code{stats} package.
}
  \item{T.dist.par}{
A vector of distribution parameters with considered ordering in \code{stats} package.
}
  \item{t}{
A real number or a vector of real numbers. \code{cdf} function compute the cumulative density function (cdf) of a distribution in point \code{t}.
}
}

\value{
This function gives the value of cumulative density function (cdf) at point \code{t}.
}

\examples{
# Example:
cdf(T.dist="norm", T.dist.par=c(0,1), 0)
cdf(T.dist="t", T.dist.par=c(7), -2)
cdf(T.dist="pois", T.dist.par=5, 0) # Equal to  dpois(0,5)
cdf(T.dist="pois", T.dist.par=5, 5)


## The function is currently defined as
function (T.dist, T.dist.par, t) 
{
    pDis = paste("p", T.dist, sep = "", collapse = "")
    if (length(T.dist.par) == 1) {
        cdf.t = do.call(pDis, list(t, T.dist.par[1]))
    }
    else {
        if (length(T.dist.par) == 2) {
            cdf.t = do.call(pDis, list(t, T.dist.par[1], T.dist.par[2]))
        }
        else {
            cdf.t = do.call(pDis, list(t, T.dist.par[1], T.dist.par[2], 
                T.dist.par[3]))
        }
    }
    return(cdf.t)
  }
}


\keyword{ pdf }
\keyword{ rd }
\keyword{ q }
\keyword{ package stats }
