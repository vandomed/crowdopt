% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/range2.R
\name{range2}
\alias{range2}
\title{Range of Values (Actually Minimum and Maximum)}
\usage{
range2(x, integer = FALSE)
}
\arguments{
\item{x}{Integer or numeric vector.}

\item{integer}{Logical value for whether \code{x} is an integer vector.}
}
\value{
Integer or numeric vector.
}
\description{
This is a faster version of base R function \code{\link[base]{range}}. For 
optimal speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
\code{integer = FALSE} otherwise.
}
\examples{
# range2 vs. range for integer vector
x <- rpois(1000, lambda = 5)
all.equal(range(x), range2(x, TRUE))
benchmark(range(x), range2(x, TRUE), replications = 5000)

# range2 vs. range for numeric vector
x <- rnorm(1000)
all.equal(range(x), range2(x))
benchmark(range(x), range2(x), replications = 5000)


}
