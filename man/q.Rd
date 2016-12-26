\name{q}
\alias{q}

\title{
Quantile of a distribution
}
\description{
This function computes the \eqn{p}-th quantile for any common univariate distribution, s.t. \eqn{0 \leq p \leq 1}. 
Unlike the usual quantile functions of other distributions (such as \code{qnorm}, \code{qpois} and etc.) the name of the introduced quantile function is fix for any distribution and the name of corresponded distribution is considered as an argument in this function. 
Thus \code{q} function is applicable for any kind of distribution with a unique form but by considering the name of corresponded distribution and its parameters as two arguments of \code{q} function.
}
\usage{
q(p, T.dist, T.dist.par)
}

\arguments{
  \item{p}{
A numeric vector (or single real number) of probabilities in bound [0,1]. Function \code{q} compute the \eqn{p}-th quantile for the introduced distribution in its arguments part.
}
  \item{T.dist}{
The distribution name of the random variable is determined by characteristic element \code{T.dist}. The names of distributions is similar to \code{stats} package.
}
  \item{T.dist.par}{
A vector of distribution parameters with considered ordering in \code{stats} package.
}
}

\value{
This function gives the \eqn{p}-th quantile of a given distribution for the real-valued or vector-valued \eqn{p \in [0,1]}.
}

\examples{
q(p=0.25, T.dist="norm", T.dist.par=c(0,1)) # Or the first Quartile of N(0,1), i.e.  qnorm(0.25)
q(p=1, T.dist="norm", T.dist.par=c(10,2)) # Is equal to  qnorm(1,10,2)
q(0.9, T.dist="cauchy", T.dist.par=c(3,1)) # Is equal to the 9th Decile of Cauchy 
                     # distribution with parameters (3,1); i.e.  qcauchy(0.5,3,1)
q(0.237, T.dist="pois", T.dist.par=25) # Is equal to  qpois(0.237,25)


## The function is currently defined as
function (p, T.dist, T.dist.par) 
{
    qDis = paste("q", T.dist, sep = "", collapse = "")
    if (length(T.dist.par) == 1) {
        q.t = do.call(qDis, list(p, T.dist.par[1]))
    }
    else {
        if (length(T.dist.par) == 2) {
            q.t = do.call(qDis, list(p, T.dist.par[1], T.dist.par[2]))
        }
        else {
            q.t = do.call(qDis, list(p, T.dist.par[1], T.dist.par[2], 
                T.dist.par[3]))
        }
    }
    return(q.t)
  }
}

\keyword{ pdf }
\keyword{ rd }
\keyword{ cdf }
\keyword{ package stats }
