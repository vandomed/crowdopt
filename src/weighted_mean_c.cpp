#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double weighted_mean_ii(IntegerVector x, IntegerVector w) {
  int n = x.size();
  double sumx = 0;
  double sumw = 0;
  double weight = 0;
  for (int a = 0; a < n; ++a) {
    weight = w[a];
    sumx += x[a] * weight;
    sumw += weight;
  }
  double meanx = sumx / sumw;
  return meanx;
}

// [[Rcpp::export]]
double weighted_mean_in(IntegerVector x, NumericVector w) {
  int n = x.size();
  double sumx = 0;
  double sumw = 0;
  double weight = 0;
  for (int a = 0; a < n; ++a) {
    weight = w[a];
    sumx += x[a] * weight;
    sumw += weight;
  }
  double meanx = sumx / sumw;
  return meanx;
}

// [[Rcpp::export]]
double weighted_mean_ni(NumericVector x, IntegerVector w) {
  int n = x.size();
  double sumx = 0;
  double sumw = 0;
  double weight = 0;
  for (int a = 0; a < n; ++a) {
    weight = w[a];
    sumx += x[a] * weight;
    sumw += weight;
  }
  double meanx = sumx / sumw;
  return meanx;
}

// [[Rcpp::export]]
double weighted_mean_nn(NumericVector x, NumericVector w) {
  int n = x.size();
  double sumx = 0;
  double sumw = 0;
  double weight = 0;
  for (int a = 0; a < n; ++a) {
    weight = w[a];
    sumx += x[a] * weight;
    sumw += weight;
  }
  double meanx = sumx / sumw;
  return meanx;
}