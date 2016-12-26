\name{DISTRIB-package}
\alias{DISTRIB-package}
\alias{DISTRIB}
\docType{package}
\title{
\packageTitle{DISTRIB}
}
\description{
Previously, four useful functions \code{dnorm}, \code{pnorm}, \code{qnorm} and \code{rnorm} are introduced for any univariate distribution in package \code{stats}. 
But the name of these functions are different for any distribution, for example compare the names of \code{dcauchy} and \code{dchisq} which are for Cauchy and Chi-square distributions, respectively.
Now suppose that you have a fixed formula which you want to work with any distribution. To this matter, the author of this package try to define four functions \code{pdf}, \code{cdf}, \code{rd} and \code{q} in package \code{DISTRIB}, in which the user is able to consider the name of distribution as a argument of them, and therefore these functions can work with any arbitrary distribution.
}

\author{
Abbas Parchami

Maintainer: \packageMaintainer{DISTRIB}
}


\keyword{ package }
\keyword{ pdf }
\keyword{ cdf }
\keyword{ rd }
\keyword{ q }
\keyword{ package stats }

\examples{
# An applied example for computing p-value in testing H0: mu>=0, vs, H1: mu<0 with two 
# different test statistic distribution: 

# (a) where the statistics test is T~N(0,1) and its observed value is t = -1.5
p_value = cdf(T.dist="norm", T.dist.par=c(0,1), t=-1.5)
print(p_value)

# (b) where the statistics test T has t-student dist. with 10 degree of freedom 
#     and its observed value is t = -1.5
p_value = cdf(T.dist="t", T.dist.par=10, t=-1.5) 
print(p_value)
}

