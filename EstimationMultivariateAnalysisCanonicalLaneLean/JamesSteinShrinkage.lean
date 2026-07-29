import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EstimationMultivariateAnalysisCanonicalLaneLean.EstimationMultivariateObjects

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure JamesSteinPackage (M : MultivariateDataMatrix) (G : GaussianCovariancePackage M) where
  meanVector : Type u
  shrinkageTarget : Prop
  shrinkageFactorAdmissible : Prop
  riskDominanceOverMLE : Prop

struct JamesSteinEvidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (J : JamesSteinPackage M G) where
  meanVectorClosed : J.meanVector
  shrinkageTargetClosed : J.shrinkageTarget
  shrinkageFactorAdmissibleClosed : J.shrinkageFactorAdmissible
  riskDominanceOverMLEClosed : J.riskDominanceOverMLE

def JamesSteinClosed {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (J : JamesSteinPackage M G) : Prop :=
  J.meanVector ∧ J.shrinkageTarget ∧ J.shrinkageFactorAdmissible ∧ J.riskDominanceOverMLE

theorem james_stein_closed_from_evidence {M : MultivariateDataMatrix} {G : GaussianCovariancePackage M} (J : JamesSteinPackage M G) (E : JamesSteinEvidence J) : JamesSteinClosed J :=
  And.intro E.meanVectorClosed (And.intro E.shrinkageTargetClosed (And.intro E.shrinkageFactorAdmissibleClosed E.riskDominanceOverMLEClosed))

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse