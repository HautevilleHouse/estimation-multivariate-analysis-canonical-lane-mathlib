import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure HighDimensionalRegressionPackage where
  predictorDimension : Nat
  sampleSize : Nat
  sparsityAssumption : Prop
  estimator : Type
  predictionError : Prop
  variableSelectionConsistency : Prop

structure HighDimensionalRegressionEvidence (R : HighDimensionalRegressionPackage) where
  predictionErrorClosed : R.predictionError
  variableSelectionConsistencyClosed : R.variableSelectionConsistency

def HighDimensionalRegressionClosed (R : HighDimensionalRegressionPackage) : Prop :=
  R.predictionError ∧ R.variableSelectionConsistency

theorem high_dimensional_regression_closed_from_evidence (R : HighDimensionalRegressionPackage) (E : HighDimensionalRegressionEvidence R) :
    HighDimensionalRegressionClosed R := by
  exact And.intro E.predictionErrorClosed E.variableSelectionConsistencyClosed

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse