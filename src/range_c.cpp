#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
IntegerVector range_i(IntegerVector x) {
  int n = x.size();
  int currentx = x[0];
  int minx = currentx;
  int maxx = currentx;
  for (int a = 1; a < n; ++a) {
    currentx = x[a];
    if (currentx < minx) minx = currentx;
    if (currentx > maxx) maxx = currentx;
  }
  IntegerVector out(2);
  out[0] = minx;
  out[1] = maxx;
  return out;
}

// [[Rcpp::export]]
NumericVector range_n(NumericVector x) {
  int n = x.size();
  double currentx = x[0];
  double minx = currentx;
  double maxx = currentx;
  for (int a = 1; a < n; ++a) {
    currentx = x[a];
    if (currentx < minx) minx = currentx;
    if (currentx > maxx) maxx = currentx;
  }
  NumericVector out(2);
  out[0] = minx;
  out[1] = maxx;
  return out;
}