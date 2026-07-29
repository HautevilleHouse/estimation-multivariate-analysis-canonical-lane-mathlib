import EstimationMultivariateAnalysisCanonicalLaneLean.CovarianceEstimation

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure HighDimensionalAsymptoticsPackage {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} where
  dimensionGrowth : Prop
  sampleSizeRatio : Prop
  spectralDistributionLimit : Prop
  marchenkoPasturLaw : Prop

structure HighDimensionalAsymptoticsEvidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} (H : HighDimensionalAsymptoticsPackage C) where
  dimensionGrowthClosed : H.dimensionGrowth
  sampleSizeRatioClosed : H.sampleSizeRatio
  spectralDistributionLimitClosed : H.spectralDistributionLimit
  marchenkoPasturLawClosed : H.marchenkoPasturLaw

def HighDimensionalAsymptoticsClosed {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} (H : HighDimensionalAsymptoticsPackage C) : Prop :=
  H.dimensionGrowth ∧ H.sampleSizeRatio ∧ H.spectralDistributionLimit ∧ H.marchenkoPasturLaw

theorem high_dimensional_asymptotics_closed_from_evidence {F : MultivariateNormalFamily} {M : MeanVectorEstimationPackage F} {C : CovarianceEstimationPackage M} (H : HighDimensionalAsymptoticsPackage C) (E : HighDimensionalAsymptoticsEvidence H) : HighDimensionalAsymptoticsClosed H :=
  And.intro E.dimensionGrowthClosed (And.intro E.sampleSizeRatioClosed (And.intro E.spectralDistributionLimitClosed E.marchenkoPasturLawClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse