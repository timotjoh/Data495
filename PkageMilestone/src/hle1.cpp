#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]

double hle1Cpp(const NumericVector& x) {

  int n = x.size();
  int m = (int)((n*(n+1))/2);
  int ind = 0;
  int i,j;

  NumericVector w(m);

  for(i=0; i<n; ++i) {
    for(j=0; j<=i; ++j) {
      w[ind++] = 0.5*(x[i]+x[j]);
    }
  }

  double est = median(w);
  return(est);

}
