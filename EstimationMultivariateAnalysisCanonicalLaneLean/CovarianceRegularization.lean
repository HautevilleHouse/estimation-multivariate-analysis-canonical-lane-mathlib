import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimationMultivariateAnalysisCanonicalLaneLean.EstimationMultivariateObjects

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure CovarianceRegularizationPackage (M : MultivariateDataMatrix) (G : GaussianCovariancePackage M) where
  glassoPenalty : Prop
  graphStructureLearned : Prop
  consistencyInHighDimension : Prop
  sparsityRecovered : Prop

struct CovarianceRegularizationEvidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (C : CovarianceRegularizationPackage M G) where
  glassoPenaltyClosed : C.glassoPenalty
  graphStructureLearnedClosed : C.graphStructureLearned
  consistencyInHighDimensionClosed : C.consistencyInHighDimension
  sparsityRecoveredClosed : C.sparsityRecovered

def CovarianceRegularizationClosed {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (C : CovarianceRegularizationPackage M G) : Prop :=
  C.glassoPenalty ∧ C.graphStructureLearned ∧ C.consistencyInHighDimension ∧ C.sparsityRecovered

theorem covariance_regularization_closed_from_evidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (C : CovarianceRegularizationPackage M G) (E : CovarianceRegularizationEvidence C) : CovarianceRegularizationClosed C :=
  And.intro E.glassoPenaltyClosed (And.intro E.graphStructureLearnedClosed (And.intro E.consistencyInHighDimensionClosed E.sparsityRecoveredClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse