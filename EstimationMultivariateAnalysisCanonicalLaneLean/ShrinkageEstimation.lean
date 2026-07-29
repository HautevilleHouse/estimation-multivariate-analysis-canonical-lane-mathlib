import EstimationMultivariateAnalysisCanonicalLaneLean.HighDimensionalAsymptotics

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure ShrinkageEstimationPackage {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} where
  shrinkageTargetDefined : Prop
  optimalShrinkageIntensity : Prop
  riskImprovement : Prop
  oracleqEstimator : Prop

structure ShrinkageEstimationEvidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} (S : ShrinkageEstimationPackage H) where
  shrinkageTargetDefinedClosed : S.shrinkageTargetDefined
  optimalShrinkageIntensityClosed : S.optimalShrinkageIntensity
  riskImprovementClosed : S.riskImprovement
  oracleqEstimatorClosed : S.oracleqEstimator

def ShrinkageEstimationClosed {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} (S : ShrinkageEstimationPackage H) : Prop :=
  S.shrinkageTargetDefined ∧ S.optimalShrinkageIntensity ∧ S.riskImprovement ∧ S.oracleqEstimator

theorem shrinkage_estimation_closed_from_evidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} (S : ShrinkageEstimationPackage H) (E : ShrinkageEstimationEvidence S) : ShrinkageEstimationClosed S :=
  And.intro E.shrinkageTargetDefinedClosed (And.intro E.optimalShrinkageIntensityClosed (And.intro E.riskImprovementClosed E.oracleqEstimatorClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse