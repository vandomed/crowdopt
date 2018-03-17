#' Sample Standard Deviation
#' 
#' This is a faster version of base R function \code{\link[stats]{sd}}. For 
#' optimal speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
#' \code{integer = FALSE} otherwise. Note that for long vectors the function 
#' \code{Var} in \pkg{Rfast} is typically much faster than \code{\link{sd2}}.
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
#' # sd2 vs. sd for integer vector
#' x <- rpois(1000, lambda = 5)
#' all.equal(sd(x), sd2(x, integer = TRUE))
#' benchmark(sd(x), sd2(x, integer = TRUE), replications = 2000)
#' 
#' # sd2 vs. sd for numeric vector
#' x <- rnorm(1000)
#' all.equal(sd(x), sd2(x))
#' benchmark(sd(x), sd2(x), replications = 2000) 
#' 
#' 
#' @export
sd2 <- function(x, integer = FALSE) {
  if (integer) {
    return(sqrt(.Call(`_crowdopt_var_i`, x)))
  }
  return(sqrt(.Call(`_crowdopt_var_n`, x)))
}