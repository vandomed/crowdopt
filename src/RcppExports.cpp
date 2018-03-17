// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// cov_i
double cov_i(IntegerVector x, IntegerVector y);
RcppExport SEXP _crowdopt_cov_i(SEXP xSEXP, SEXP ySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type y(ySEXP);
    rcpp_result_gen = Rcpp::wrap(cov_i(x, y));
    return rcpp_result_gen;
END_RCPP
}
// cov_n
double cov_n(NumericVector x, NumericVector y);
RcppExport SEXP _crowdopt_cov_n(SEXP xSEXP, SEXP ySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y(ySEXP);
    rcpp_result_gen = Rcpp::wrap(cov_n(x, y));
    return rcpp_result_gen;
END_RCPP
}
// var_i
double var_i(IntegerVector x);
RcppExport SEXP _crowdopt_var_i(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerVector >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(var_i(x));
    return rcpp_result_gen;
END_RCPP
}
// var_n
double var_n(NumericVector x);
RcppExport SEXP _crowdopt_var_n(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(var_n(x));
    return rcpp_result_gen;
END_RCPP
}
// weighted_mean_ii
double weighted_mean_ii(IntegerVector x, IntegerVector w);
RcppExport SEXP _crowdopt_weighted_mean_ii(SEXP xSEXP, SEXP wSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type w(wSEXP);
    rcpp_result_gen = Rcpp::wrap(weighted_mean_ii(x, w));
    return rcpp_result_gen;
END_RCPP
}
// weighted_mean_in
double weighted_mean_in(IntegerVector x, NumericVector w);
RcppExport SEXP _crowdopt_weighted_mean_in(SEXP xSEXP, SEXP wSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type w(wSEXP);
    rcpp_result_gen = Rcpp::wrap(weighted_mean_in(x, w));
    return rcpp_result_gen;
END_RCPP
}
// weighted_mean_ni
double weighted_mean_ni(NumericVector x, IntegerVector w);
RcppExport SEXP _crowdopt_weighted_mean_ni(SEXP xSEXP, SEXP wSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type w(wSEXP);
    rcpp_result_gen = Rcpp::wrap(weighted_mean_ni(x, w));
    return rcpp_result_gen;
END_RCPP
}
// weighted_mean_nn
double weighted_mean_nn(NumericVector x, NumericVector w);
RcppExport SEXP _crowdopt_weighted_mean_nn(SEXP xSEXP, SEXP wSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type w(wSEXP);
    rcpp_result_gen = Rcpp::wrap(weighted_mean_nn(x, w));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_crowdopt_cov_i", (DL_FUNC) &_crowdopt_cov_i, 2},
    {"_crowdopt_cov_n", (DL_FUNC) &_crowdopt_cov_n, 2},
    {"_crowdopt_var_i", (DL_FUNC) &_crowdopt_var_i, 1},
    {"_crowdopt_var_n", (DL_FUNC) &_crowdopt_var_n, 1},
    {"_crowdopt_weighted_mean_ii", (DL_FUNC) &_crowdopt_weighted_mean_ii, 2},
    {"_crowdopt_weighted_mean_in", (DL_FUNC) &_crowdopt_weighted_mean_in, 2},
    {"_crowdopt_weighted_mean_ni", (DL_FUNC) &_crowdopt_weighted_mean_ni, 2},
    {"_crowdopt_weighted_mean_nn", (DL_FUNC) &_crowdopt_weighted_mean_nn, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_crowdopt(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
