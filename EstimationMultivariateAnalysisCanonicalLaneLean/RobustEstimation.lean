import EstimationMultivariateAnalysisCanonicalLaneLean.ShrinkageEstimation

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure RobustEstimationPackage {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} {S : ShrinkageEstimationPackage H} where
  contaminationModel : Prop
  breakdownPoint : Prop
  influenceFunction : Prop
  robustEstimatorExists : Prop

structure RobustEstimationEvidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} {S : ShrinkageEstimationPackage H} (R : RobustEstimationPackage S) where
  contaminationModelClosed : R.contaminationModel
  breakdownPointClosed : R.breakdownPoint
  influenceFunctionClosed : R.influenceFunction
  robustEstimatorExistsClosed : R.robustEstimatorExists

def RobustEstimationClosed {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} {S : ShrinkageEstimationPackage H} (R : RobustEstimationPackage S) : Prop :=
  R.contaminationModel ∧ R.breakdownPoint ∧ R.influenceFunction ∧ R.robustEstimatorExists

theorem robust_estimation_closed_from_evidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} {H : HighDimensionalAsymptoticsPackage C} {S : ShrinkageEstimationPackage H} (R : RobustEstimationPackage S) (E : RobustEstimationEvidence R) : RobustEstimationClosed R :=
  And.intro E.contaminationModelClosed (And.intro E.breakdownPointClosed (And.intro E.influenceFunctionClosed E.robustEstimatorExistsClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse