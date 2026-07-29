import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimationMultivariateAnalysisCanonicalLaneLean.EstimationMultivariateObjects

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure GaussianCovariancePackage (M : MultivariateDataMatrix) where
  meanKnown : Prop
  sampleCovarianceInvertible : Prop
  wishartDistribution : Prop
  maximumLikelihoodAdmissible : Prop

structure GaussianCovarianceEvidence {M : MultivariateDataMatrix} (G : GaussianCovariancePackage M) where
  meanKnownClosed : G.meanKnown
  sampleCovarianceInvertibleClosed : G.sampleCovarianceInvertible
  wishartDistributionClosed : G.wishartDistribution
  maximumLikelihoodAdmissibleClosed : G.maximumLikelihoodAdmissible

def GaussianCovarianceClosed {M : MultivariateDataMatrix} (G : GaussianCovariancePackage M) : Prop :=
  G.meanKnown ∧ G.sampleCovarianceInvertible ∧ G.wishartDistribution ∧ G.maximumLikelihoodAdmissible

theorem gaussian_covariance_closed_from_evidence {M : MultivariateDataMatrix} (G : GaussianCovariancePackage M) (E : GaussianCovarianceEvidence G) : GaussianCovarianceClosed G :=
  And.intro E.meanKnownClosed (And.intro E.sampleCovarianceInvertibleClosed (And.intro E.wishartDistributionClosed E.maximumLikelihoodAdmissibleClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse