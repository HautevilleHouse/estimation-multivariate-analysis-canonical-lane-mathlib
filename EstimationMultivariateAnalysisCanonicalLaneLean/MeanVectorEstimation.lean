import EstimationMultivariateAnalysisCanonicalLaneLean.MultivariateNormalFamily

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure MeanVectorEstimationPackage (F : MultivariateNormalFamily) where
  estimatorDefined : Prop
  unbiasedProperty : Prop
  varianceBound : Prop
  consistencyAsymptotic : Prop

structure MeanVectorEstimationEvidence {F : MultivariateNormalFamily} (M : MeanVectorEstimationPackage F) where
  estimatorDefinedClosed : M.estimatorDefined
  unbiasedPropertyClosed : M.unbiasedProperty
  varianceBoundClosed : M.varianceBound
  consistencyAsymptoticClosed : M.consistencyAsymptotic

def MeanVectorEstimationClosed {F : MultivariateNormalFamily} (M : MeanVectorEstimationPackage F) : Prop :=
  M.estimatorDefined ∧ M.unbiasedProperty ∧ M.varianceBound ∧ M.consistencyAsymptotic

theorem mean_vector_estimation_closed_from_evidence {F : MultivariateNormalFamily} (M : MeanVectorEstimationPackage F) (E : MeanVectorEstimationEvidence M) : MeanVectorEstimationClosed M :=
  And.intro E.estimatorDefinedClosed (And.intro E.unbiasedPropertyClosed (And.intro E.varianceBoundClosed E.consistencyAsymptoticClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse