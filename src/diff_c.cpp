#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
IntegerVector diff_i(IntegerVector x, int lag = 1) {
  
  // Get length(x) and initialize output vector
  int n = x.size();
  int n_lesslag = n - lag;
  IntegerVector out(n_lesslag);
  
  // Loop through and calculate differences
  for (int a = 0; a < n_lesslag; ++a) out[a] = x[a + lag] - x[a];
  return out;
}

// [[Rcpp::export]]
NumericVector diff_n(NumericVector x, int lag = 1) {
  
  // Get length(x) and initialize output vector
  int n = x.size();
  int n_lesslag = n - lag;
  NumericVector out(n_lesslag);
  
  // Loop through and calculate differences
  for (int a = 0; a < n_lesslag; ++a) out[a] = x[a + lag] - x[a];
  return out;
}