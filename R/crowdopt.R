#' Crowd-Optimized R Functions
#' 
#' Faster versions of base R functions (e.g. mean, standard deviation, 
#' covariance, etc.), mostly written in C++. Function names are the same as the 
#' corresponding base R functions, but with a 2 added (e.g. mean2 for mean).
#' 
#' The concept for this package is crowdsourced optimization for speed. Anyone 
#' can contribute on GitHub (\url{https://github.com/vandomed}). Once you 
#' contribute a function, you become a co-author for the package, and remain a 
#' co-author even if your function eventually gets replaced by a faster one 
#' developed by somebody else.
#' 
#' To contribute a function, all you need to do is add 1 .R file with the code 
#' and documentation for your function, using \strong{roxygen2} syntax. You can 
#' use \code{mean2.R} as a template. Be sure to include an \strong{Examples} 
#' section in which you demonstrate that your function is faster than the 
#' corresponding base R function.
#' 
#' In general, contributed functions should be substantially faster than the 
#' corresponding base R function, ideally for both small and large objects (e.g. 
#' vectors of length 5 and 500,000).
#' 
#' \tabular{ll}{
#' Package: \tab crowdopt \cr
#' Type: \tab Package \cr
#' Version: \tab 1.1.1 \cr
#' Date: \tab 2018-03-17 \cr
#' License: \tab GPL-3 \cr
#' }
#'
#' 
#' @author Dane R. Van Domelen \cr \email{vandomed@@gmail.com}
#' 
#' @references 
#' Eddelbuettel, D. and Francois, R. (2011) Rcpp: Seamless R and C++ 
#' Integration. Journal of Statistical Software, 40(8), 1-18. 
#' \url{http://www.jstatsoft.org/v40/i08/}.
#' 
#' Eddelbuettel, D. (2013) Seamless R and C++ Integration with Rcpp. Springer, 
#' New York. ISBN 978-1-4614-6867-7.
#' 
#' Eddelbuettel, D. and Balamuta, J.J. (2017). Extending R with C++: A Brief 
#' Introduction to Rcpp. PeerJ Preprints 5:e3188v1. 
#' \url{https://doi.org/10.7287/peerj.preprints.3188v1}.
#' 
#' Wickham, H., Danenberg, P. and Eugster, M. (2017) roxygen2: In-Line 
#' Documentation for R. R package version 6.0.1. 
#' \url{https://CRAN.R-project.org/package=roxygen2}.
#' 
#' 
#' Acknowledgment: This material is based upon work supported by the 
#' National Science Foundation Graduate Research Fellowship under Grant No. 
#' DGE-0940903.
#' 
#' @docType package
#' @import Rcpp
#' @importFrom Rcpp evalCpp
#' @importFrom rbenchmark benchmark
#' @import stats
#' @useDynLib crowdopt, .registration=TRUE
#' @name crowdopt
NULL