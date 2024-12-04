\name{hle1R_outer}
\alias{hle1R_outer}
\alias{hle1Cpp}
\title{
Hodges-Lehmann estimates of location using different methods
}
\description{
Different algorithms for implmenting the Hodges-Lehmann estimate of location are implemented.
One may compare the methods.
}
\usage{
hle1R_outer(x)
}
\arguments{
  \item{x}{ nx1 vector.  A sample from a population.}
}
\details{
hle1R_outer uses the \code{outer} function which results in extra computation (almost twice as much).
hle1Cpp calls a C++ function with loops via Rcpp.
}
\value{
scalar. The Hodges-Lehmann estimate of location.
}
\references{
}
\author{
timotjoh
}
\seealso{
\code{\link{outer}} 
}
\examples{
x <- round(runif(100),3)
system.time(hle1R_outer(x))
system.time(hle1Cpp(x))
}
