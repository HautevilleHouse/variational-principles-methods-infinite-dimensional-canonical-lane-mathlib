import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure DeformationLemmaPackage where
  pseudoGradientFlow : Type u
  deformationRetract : Prop
  levelSetStability : Prop
  homotopyContinuation : Prop

structure DeformationLemmaEvidence (D : DeformationLemmaPackage) where
  deformationRetractClosed : D.deformationRetract
  levelSetStabilityClosed : D.levelSetStability
  homotopyContinuationClosed : D.homotopyContinuation

def DeformationLemmaClosed (D : DeformationLemmaPackage) : Prop :=
  D.deformationRetract ∧ D.levelSetStability ∧ D.homotopyContinuation

theorem deformation_lemma_closed_from_evidence (D : DeformationLemmaPackage) (Ev : DeformationLemmaEvidence D) :
    DeformationLemmaClosed D := by
  exact And.intro Ev.deformationRetractClosed
    (And.intro Ev.levelSetStabilityClosed Ev.homotopyContinuationClosed)

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse