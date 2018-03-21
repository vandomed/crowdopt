#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
IntegerMatrix rle2_i(IntegerVector x) {
  
  // Get length(x)
  int n = x.size();
  
  // Loop through and record value, length for runs
  int rows = 1;
  for (int a = 1; a < n; ++a)
    if (x[a] != x[a - 1]) rows += 1;
  IntegerMatrix out(rows, 2);
  int presval = x[0];
  int index = -1;
  int counter = 1;
  for (int a = 1; a < n; ++a) {
    int x_a = x[a];
    if (x_a != presval) {
      index += 1;
      out(index, 0) = presval;
      out(index, 1) = counter;
      presval = x_a;
      counter = 1;
    } else {
      counter += 1;
    }
  }
  index += 1;
  out(index, 0) = presval;
  out(index, 1) = counter;
  return out;
    
}

// [[Rcpp::export]]
NumericMatrix rle2_n(NumericVector x) {
  
  // Get length(x)
  int n = x.size();
  
  // Loop through and record value, length for runs
  int rows = 1;
  for (int a = 1; a < n; ++a)
    if (x[a] != x[a - 1]) rows += 1;
  NumericMatrix out(rows, 2);
  double presval = x[0];
  int index = -1;
  int counter = 1;
  for (int a = 1; a < n; ++a) {
    double x_a = x[a];
    if (x_a != presval) {
      index += 1;
      out(index, 0) = presval;
      out(index, 1) = counter;
      presval = x_a;
      counter = 1;
    } else {
      counter += 1;
    }
  }
  index += 1;
  out(index, 0) = presval;
  out(index, 1) = counter;
  return out;
    
}