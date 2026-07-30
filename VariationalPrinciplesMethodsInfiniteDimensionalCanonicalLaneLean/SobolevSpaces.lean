import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensional

structure SobolevSpacePackage {Ω : Type u} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω] where
  exponent : ℝ≥0
  weakDerivativeExponent : ℝ≥0
  completeness : Prop
  reflexivity : Prop
  embeddingTheorem : Prop
  compactEmbedding : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  completenessClosed : S.completeness
  reflexivityClosed : S.reflexivity
  embeddingTheoremClosed : S.embeddingTheorem
  compactEmbeddingClosed : S.compactEmbedding

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.completeness ∧ S.reflexivity ∧ S.embeddingTheorem ∧ S.compactEmbedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.completenessClosed
    (And.intro E.reflexivityClosed
      (And.intro E.embeddingTheoremClosed E.compactEmbeddingClosed))

end VariationalPrinciplesMethodsInfiniteDimensional
end HautevilleHouse
