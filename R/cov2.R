#' Sample Covariance for 2 Vectors
#' 
#' This is a faster version of base R function \code{\link[stats]{cov}}. For 
#' optimal speed, use \code{integer = TRUE} if \code{x} and \code{y} are integer 
#' vectors and \code{integer = FALSE} otherwise. This function uses a one-pass 
#' covariance calculation that makes it susceptible to precision issues if 
#' \code{x} values are very large.
#' 
#' 
#' @param x,y Integer or numeric vector.
#' @param integer Logical value for whether \code{x} and \code{y} are integer 
#' vectors.
#' 
#' 
#' @return Numeric value.
#' 
#' 
#' @examples
#' # cov2 vs. cov for integer vector
#' x <- rpois(1000, lambda = 5)
#' y <- rpois(1000, lambda = 5)
#' all.equal(cov(x, y), cov2(x, y, integer = TRUE))
#' benchmark(cov(x, y), cov2(x, y, integer = TRUE), replications = 5000)
#' 
#' # cov2 vs. cov for numeric vector
#' x <- rnorm(1000)
#' y <- rnorm(1000)
#' all.equal(cov(x, y), cov2(x, y))
#' benchmark(cov(x, y), cov2(x, y), replications = 5000)
#' 
#' 
#' @export
cov2 <- function(x, y, integer = FALSE) {
  if (integer) {
    return(.Call(`_crowdopt_cov_i`, x, y))
  }
  return(.Call(`_crowdopt_cov_n`, x, y))
}