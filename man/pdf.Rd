\name{pdf}
\alias{pdf}
\title{
Probability density function (pdf) and probability mass function (pmf)
}
\description{
This function compute the value of Probability Density/Mass Function (pdf/pmf) for any univariate distribution at point \eqn{t}, i.e. \eqn{f(t)} for continues random variable \eqn{T}, or \eqn{P(T = t)} for discrete random variable. 
Unlike the common pdf's/pmf's of other distributions (such as \code{dnorm}, \code{dpois} and etc.) the name of the introduced \code{pdf} function is fix for any distribution and the name of distribution is considered as an argument of this function. 
So the \code{pdf} function is applicable for any kind of distribution with an unique form but by considering the name of \eqn{T} distribution (and its parameters) as two arguments of \code{pdf} function. 
}
\usage{
pdf(T.dist, T.dist.par, t)
}

\arguments{
  \item{T.dist}{
The distribution name of the random variable is determined by characteristic element \code{T.dist}. The names of distributions is similar to \code{stats} package.
}
  \item{T.dist.par}{
A vector of distribution parameters with considered ordering in \code{stats} package.
}
  \item{t}{
A real number or a vector of real numbers. \code{pdf} compute pdf/pmf of a distribution in point \code{t}.
}
}

\value{
This function gives the value of probability density function (pdf) at point \code{t} for continues random variable, or gives the value of probability mass function (pmf) at point \code{t} for discrete random variable.
}

\examples{
pdf(T.dist="norm", T.dist.par=c(0,1), t=0) # Is equal to  dnorm(0)
pdf(T.dist="t", T.dist.par=c(7), -2) # Is equal to  dt(-2,7)
pdf(T.dist="pois", T.dist.par=5, 5) # Is equal to  dpois(5,5)


## The function is currently defined as
function (T.dist, T.dist.par, t) 
{
    dDis = paste("d", T.dist, sep = "", collapse = "")
    if (length(T.dist.par) == 1) {
        pdf.t = do.call(dDis, list(t, T.dist.par[1]))
    }
    else {
        if (length(T.dist.par) == 2) {
            pdf.t = do.call(dDis, list(t, T.dist.par[1], T.dist.par[2]))
        }
        else {
            pdf.t = do.call(dDis, list(t, T.dist.par[1], T.dist.par[2], 
                T.dist.par[3]))
        }
    }
    return(pdf.t)
  }
}

\keyword{ cdf }
\keyword{ rd }
\keyword{ q }
\keyword{ package stats }
