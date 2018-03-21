#' Run Length Encoding
#' 
#' This is a faster version of base R function \code{\link[base]{rle}}. Returns 
#' matrix where first column is value, second column is length. For optimal 
#' speed, use \code{integer = TRUE} if \code{x} is an integer vector and 
#' \code{integer = FALSE} otherwise. Compatible with logical vectors (use 
#' \code{integer = TRUE}) but replaces TRUE/FALSE with 1/0; not compatible with 
#' character vectors. 
#' 
#' 
#' @param x Integer, numeric, or logical vector. 
#' @param integer Logical value for whether \code{x} is an integer vector.
#' 
#' @return
#' Integer or numeric matrix.
#' 
#' 
#' @export
rle2 <- function(x, integer = FALSE) {
  if (integer) {
    return(.Call(`_crowdopt_rle2_i`, x))
  }
  return(.Call(`_crowdopt_rle2_n`, x))
}
