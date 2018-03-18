#' Lagged Differences
#' 
#' This is a faster version of base R function \code{\link[base]{diff}}. For 
#' optimal speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
#' \code{integer = FALSE} otherwise.
#' 
#' 
#' @param x Integer or numeric vector.
#' @param lag Integer value.
#' @param integer Logical value for whether \code{x} is an integer vector.
#' 
#' 
#' @return Integer or numeric value.
#' 
#' 
#' @examples
#' # diff2 vs. diff for integer vector and 1-unit lag
#' x <- rpois(1000, lambda = 5)
#' all.equal(diff(x), diff2(x, integer = TRUE))
#' benchmark(diff(x), diff2(x, integer = TRUE), replications = 5000)
#' 
#' # diff2 vs. diff for integer vector and 3-unit lag
#' x <- rpois(1000, lambda = 5)
#' all.equal(diff(x, 2), diff2(x, 2, integer = TRUE))
#' benchmark(diff(x, 2), diff2(x, 2, integer = TRUE), replications = 5000)
#' 
#' # diff2 vs. diff for numeric vector and 1-unit lag
#' x <- rnorm(1000)
#' all.equal(diff(x), diff2(x))
#' benchmark(diff(x), diff2(x), replications = 5000)
#' 
#' # diff2 vs. diff for numeric vector and 3-unit lag
#' x <- rnorm(1000)
#' all.equal(diff(x, 2), diff2(x, 2))
#' benchmark(diff(x, 2), diff2(x, 2), replications = 5000)
#' 
#' 
#' @export
diff2 <- function(x, lag = 1, integer = FALSE) {
  if (integer) {
    return(.Call(`_crowdopt_diff_i`, x, lag))
  }
  return(.Call(`_crowdopt_diff_n`, x, lag))
}