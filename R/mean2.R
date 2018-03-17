#' Arithmetic Mean
#' 
#' This is a faster version of the base R function \code{\link[base]{mean}}, 
#' defined simply as \code{sum(x) / length(x)}. Speed advantage diminishes with 
#' \code{length(x)}.
#' 
#' @param x Integer or numeric vector.
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