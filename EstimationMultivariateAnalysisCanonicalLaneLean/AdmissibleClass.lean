import EstimationMultivariateAnalysisCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure AdmissibleClass where
  object : EstimationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EstimationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse