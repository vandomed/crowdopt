#' Weighted Arithmetic Mean
#' 
#' This is a faster version of base R function 
#' \code{\link[stats]{weighted.mean}}. For optimal speed, specify 
#' \code{x.integer = TRUE} and \code{w.integer = TRUE} if \code{x} and \code{w} 
#' are integer vectors.
#' 
#' 
#' @param x Integer or numeric vector. 
#' @param w Integer or numeric vector of weights.
#' @param x.integer Logical value for whether \code{x} is an integer vector.
#' @param w.integer Logical value for whether \code{w} is an integer vector.
#' 
#' 
#' @return Numeric value.
#' 
#' 
#' @examples
#' # weighted.mean2 vs. weighted.mean for integer vectors
#' x <- rpois(1000, lambda = 5)
#' w <- rpois(1000, lambda = 1)
#' all.equal(weighted.mean(x, w), weighted.mean2(x, w, TRUE, TRUE))
#' benchmark(weighted.mean(x, w), weighted.mean2(x, w, TRUE, TRUE), 
#'           replications = 1000)
#' 
#' # weighted.mean2 vs. weighted.mean for numeric vectors
#' x <- rnorm(1000)
#' w <- rexp(1000) 
#' all.equal(weighted.mean(x, w), weighted.mean2(x, w))
#' benchmark(weighted.mean(x), weighted.mean2(x, w), 
#'           replications = 1000)
#' 
#' 
#' @export
weighted.mean2 <- function(x, w, x.integer = FALSE, w.integer = FALSE) {
  if (x.integer) {
    if (w.integer) {
      return(.Call(`_crowdopt_weighted_mean_ii`, x, w))
    }
    return(.Call(`_crowdopt_weighted_mean_in`, x, w))
  }
  if (w.integer) {
    return(.Call(`_crowdopt_weighted_mean_ni`, x, w))
  }
  return(.Call(`_crowdopt_weighted_mean_nn`, x, w))
}