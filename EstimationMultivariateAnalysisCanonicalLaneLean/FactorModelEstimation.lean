import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure FactorModelEstimationPackage where
  numberOfFactors : Nat
  crossSectionDimension : Nat
  timeSeriesLength : Nat
  factorLoadings : Type
  idiosyncraticVariance : Type
  identificationCondition : Prop
  estimationConsistency : Prop

structure FactorModelEstimationEvidence (F : FactorModelEstimationPackage) where
  identificationConditionClosed : F.identificationCondition
  estimationConsistencyClosed : F.estimationConsistency

def FactorModelEstimationClosed (F : FactorModelEstimationPackage) : Prop :=
  F.identificationCondition ∧ F.estimationConsistency

theorem factor_model_estimation_closed_from_evidence (F : FactorModelEstimationPackage) (E : FactorModelEstimationEvidence F) :
    FactorModelEstimationClosed F := by
  exact And.intro E.identificationConditionClosed E.estimationConsistencyClosed

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse