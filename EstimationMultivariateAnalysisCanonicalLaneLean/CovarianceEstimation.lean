import EstimationMultivariateAnalysisCanonicalLaneLean.MeanVectorEstimation

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure CovarianceEstimationPackage {F : MultivariateNormalFamily} (M : MeanVectorEstimationPackage F) where
  sampleCovarianceDefined : Prop
  positiveDefiniteGuarantee : Prop
  convergenceRate : Prop
  eigenvalueConsistency : Prop

structure CovarianceEstimationEvidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} (C : CovarianceEstimationPackage M) where
  sampleCovarianceDefinedClosed : C.sampleCovarianceDefined
  positiveDefiniteGuaranteeClosed : C.positiveDefiniteGuarantee
  convergenceRateClosed : C.convergenceRate
  eigenvalueConsistencyClosed : C.eigenvalueConsistency

def CovarianceEstimationClosed {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} (C : CovarianceEstimationPackage M) : Prop :=
  C.sampleCovarianceDefined ∧ C.positiveDefiniteGuarantee ∧ C.convergenceRate ∧ C.eigenvalueConsistency

theorem covariance_estimation_closed_from_evidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} (C : CovarianceEstimationPackage M) (E : CovarianceEstimationEvidence C) : CovarianceEstimationClosed C :=
  And.intro E.sampleCovarianceDefinedClosed (And.intro E.positiveDefiniteGuaranteeClosed (And.intro E.convergenceRateClosed E.eigenvalueConsistencyClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse