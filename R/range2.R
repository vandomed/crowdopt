#' Range of Values (Actually Minimum and Maximum)
#' 
#' This is a faster version of base R function \code{\link[base]{range}}. For 
#' optimal speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
#' \code{integer = FALSE} otherwise.
#' 
#' 
#' @param x Integer or numeric vector.
#' @param integer Logical value for whether \code{x} is an integer vector.
#' 
#' 
#' @return Integer or numeric vector.
#' 
#' 
#' @examples
#' # range2 vs. range for integer vector
#' x <- rpois(1000, lambda = 5)
#' all.equal(range(x), range2(x, TRUE))
#' benchmark(range(x), range2(x, TRUE), replications = 10000)
#' 
#' # range2 vs. range for numeric vector
#' x <- rnorm(1000)
#' all.equal(range(x), range2(x))
#' benchmark(range(x), range2(x), replications = 10000)
#' 
#' 
#' @export
range2 <- function(x, integer = FALSE) {
  if (integer) {
    return(.Call(`_crowdopt_range_i`, x))
  }
  return(.Call(`_crowdopt_range_n`, x))
}