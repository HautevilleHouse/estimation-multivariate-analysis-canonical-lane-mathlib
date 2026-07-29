import EstimationMultivariateAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure MultivariateNormalFamily where
  dimension : ℕ
  meanVector : Type u
  covarianceMatrix : Type v
  familyParameterized : Prop
  densityDefined : Prop
  fisherInformationExists : Prop

structure MultivariateNormalFamilyEvidence (F : MultivariateNormalFamily) where
  familyParameterizedClosed : F.familyParameterized
  densityDefinedClosed : F.densityDefined
  fisherInformationExistsClosed : F.fisherInformationExists

def MultivariateNormalFamilyClosed (F : MultivariateNormalFamily) : Prop :=
  F.familyParameterized ∧ F.densityDefined ∧ F.fisherInformationExists

theorem multivariate_normal_family_closed_from_evidence (F : MultivariateNormalFamily) (E : MultivariateNormalFamilyEvidence F) : MultivariateNormalFamilyClosed F :=
  And.intro E.familyParameterizedClosed (And.intro E.densityDefinedClosed E.fisherInformationExistsClosed)

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse