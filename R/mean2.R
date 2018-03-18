#' Arithmetic Mean
#' 
#' This is a faster version of the base R function \code{\link[base]{mean}}, 
#' defined simply as \code{sum(x) / length(x)}. The speed advantage diminishes 
#' with \code{length(x)}. Note that a C++ implementation is faster for very 
#' large vectors (i.e. length around 25,000), but much slower for shorter 
#' vectors, so it is not currently utilized.
#' 
#' @param x Integer or numeric vector.
#' @param integer Logical value for whether \code{x} is an integer vector.
#' 
#' @return Numeric value.
#' 
#' @examples 
#' # mean2 vs. mean for integer vector
#' x <- rpois(1000, lambda = 5)
#' all.equal(mean(x), mean2(x))
#' benchmark(mean(x), mean2(x), replications = 1000)
#' 
#' # mean2 vs. mean for numeric vector
#' x <- rnorm(1000)
#' all.equal(mean(x), mean2(x))
#' benchmark(mean(x), mean2(x), replications = 1000)
#' 
#' 
#' @export
mean2 <- function(x, integer = FALSE) {
  return(sum(x) / length(x))
}