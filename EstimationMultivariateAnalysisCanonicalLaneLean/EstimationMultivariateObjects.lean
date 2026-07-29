import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure MultivariateDataMatrix where
  n : Nat
  p : Nat
  matrix : Type u
  rankFull : Prop

def MultivariateObservation := Matrix (Fin n) (Fin p) ℝ

structure AdmittedMultivariateObject where
  dataMatrix : MultivariateDataMatrix
  parametersAdmitted : Prop
  estimatorAdmitted : Prop
  objective : Prop
  conclusion : objective

def MultivariateWitnessClosed (O : AdmittedMultivariateObject) : Prop :=
  O.objective

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse