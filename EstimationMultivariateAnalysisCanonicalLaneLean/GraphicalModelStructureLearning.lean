import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EstimationMultivariateAnalysisCanonicalLaneLean

structure GraphicalModelStructureLearningPackage where
  nodeCount : Nat
  edgeSet : Type
  sampleSize : Nat
  sparsityAssumption : Prop
  consistency : Prop
  structureRecovery : Prop

structure GraphicalModelStructureLearningEvidence (G : GraphicalModelStructureLearningPackage) where
  consistencyClosed : G.consistency
  structureRecoveryClosed : G.structureRecovery

def GraphicalModelStructureLearningClosed (G : GraphicalModelStructureLearningPackage) : Prop :=
  G.consistency ∧ G.structureRecovery

theorem graphical_model_structure_learning_closed_from_evidence (G : GraphicalModelStructureLearningPackage) (E : GraphicalModelStructureLearningEvidence G) :
    GraphicalModelStructureLearningClosed G := by
  exact And.intro E.consistencyClosed E.structureRecoveryClosed

end EstimationMultivariateAnalysisCanonicalLaneLean
end HautevilleHouse