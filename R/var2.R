#' Sample Variance for a Vector
#' 
#' This is a faster version of base R function \code{\link[stats]{var}}. For 
#' optimal speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
#' \code{integer = FALSE} otherwise. Note that for long vectors the function 
#' \code{Var} in \pkg{Rfast} is typically much faster than \code{\link{var2}}.
#' 
#' 
#' @param x Integer or numeric vector.
#' @param integer Logical value for whether \code{x} is an integer vector.
#' 
#' 
#' @return Numeric value.
#' 
#' 
#' @references
#' Papadakis, M., Tsagris, M., Dimitriadis, M., Fafalios, S., Tsamardinos, I., 
#' Fasiolo, M., Borboudakis, G., Burkardt, J., Zou, C. and Lakiotaki, K. (2018) 
#' Rfast: A Collection of Efficient and Extremely Fast R Functions. R package 
#' version 1.8.8. \url{https://CRAN.R-project.org/package=Rfast}.
#' 
#' 
#' @examples
#' # var2 vs. var for integer vector
#' x <- rpois(1000, lambda = 5)
#' all.equal(var(x), var2(x, TRUE))
#' benchmark(var(x), var2(x, TRUE), replications = 1000)
#' 
#' # var2 vs. var for numeric vector
#' x <- rnorm(1000)
#' all.equal(var(x), var2(x))
#' benchmark(var(x), var2(x), replications = 1000)
#' 
#' 
#' @export
var2 <- function(x, integer = FALSE) {
  if (integer) {
    return(.Call(`_crowdopt_var_i`, x))
  }
  return(.Call(`_crowdopt_var_n`, x))
}