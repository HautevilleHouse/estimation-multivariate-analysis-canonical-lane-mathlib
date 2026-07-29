import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimationMultivariateAnalysisCanonicalLaneLean.CovarianceRegularization

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MultivariateWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedEstimationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_estimation_endgame (A : AdmissibleClass) : ConstrainedEstimationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse