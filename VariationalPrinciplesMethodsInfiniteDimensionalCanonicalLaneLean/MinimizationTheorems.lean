import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure MinimizationTheoremPackage where
  functional : Type
  minimizerExistence : Prop
  mountainPassTheorem : Prop
  linkingTheorem : Prop
  deformationLemma : Prop

structure MinimizationTheoremEvidence (M : MinimizationTheoremPackage) where
  minimizerExistenceClosed : M.minimizerExistence
  mountainPassTheoremClosed : M.mountainPassTheorem
  linkingTheoremClosed : M.linkingTheorem
  deformationLemmaClosed : M.deformationLemma

def MinimizationTheoremClosed (M : MinimizationTheoremPackage) : Prop :=
  M.minimizerExistence ∧ M.mountainPassTheorem ∧ M.linkingTheorem ∧ M.deformationLemma

theorem minimization_theorem_closed_from_evidence (M : MinimizationTheoremPackage) (Ev : MinimizationTheoremEvidence M) :
    MinimizationTheoremClosed M := by
  exact And.intro Ev.minimizerExistenceClosed (And.intro Ev.mountainPassTheoremClosed (And.intro Ev.linkingTheoremClosed Ev.deformationLemmaClosed))

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse