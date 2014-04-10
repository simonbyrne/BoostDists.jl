#include <boost/math/special_functions/gamma.hpp>
#include <boost/math/special_functions/log1p.hpp>
#include <boost/math/distributions/poisson.hpp>

extern "C" {
  using namespace boost::math;
  
  double bst_gamma_p_dbl_dbl(double a, double z) {
    return gamma_p(a, z);
  }

  double bst_gamma_q_dbl_dbl(double a, double z) {
    return gamma_q(a, z);
  }

  double bst_gamma_p_derivative_dbl_dbl(double a, double z) {
    return gamma_p_derivative(a, z);
  }

  double bst_log1pmx_dbl(double x) {
    return log1pmx(x);
  }

  double bst_pdf_poisson(double x, double lambda) {
    poisson_distribution<> d(lambda);
    return pdf(d,x);
  }

  double bst_cdf_poisson(double x, double lambda) {
    poisson_distribution<> d(lambda);
    return cdf(d,x);
  }

  double bst_ccdf_poisson(double x, double lambda) {
    poisson_distribution<> d(lambda);
    return cdf(complement(d,x));
  }


}
