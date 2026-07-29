import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimationMultivariateAnalysisCanonicalLaneLean.EstimationMultivariateObjects

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure PCAPackage (M : MultivariateDataMatrix) (G : GaussianCovariancePackage M) where
  covarianceEigendecomposition : Prop
  principalComponentsDefined : Prop
  varianceExplained : Prop
  dimensionReductionValid : Prop

struct PCAAnalyticEvidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (P : PCAPackage M G) where
  covarianceEigendecompositionClosed : P.covarianceEigendecomposition
  principalComponentsDefinedClosed : P.principalComponentsDefined
  varianceExplainedClosed : P.varianceExplained
  dimensionReductionValidClosed : P.dimensionReductionValid

def PCAClosed {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (P : PCAPackage M G) : Prop :=
  P.covarianceEigendecomposition ∧ P.principalComponentsDefined ∧ P.varianceExplained ∧ P.dimensionReductionValid

theorem pca_closed_from_evidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (P : PCAPackage M G) (E : PCAAnalyticEvidence P) : PCAClosed P :=
  And.intro E.covarianceEigendecompositionClosed (And.intro E.principalComponentsDefinedClosed (And.intro E.varianceExplainedClosed E.dimensionReductionValidClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse