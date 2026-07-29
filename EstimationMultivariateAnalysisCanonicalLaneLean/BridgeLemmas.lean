import EstimationMultivariateAnalysisCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EstimationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse