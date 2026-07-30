import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure CriticalPointTheoryPackage where
  functional : Type
  palaisSmaleCondition : Prop
  criticalPoints : Prop
  morseTheory : Prop
  bifurcation : Prop

structure CriticalPointTheoryEvidence (C : CriticalPointTheoryPackage) where
  palaisSmaleConditionClosed : C.palaisSmaleCondition
  criticalPointsClosed : C.criticalPoints
  morseTheoryClosed : C.morseTheory
  bifurcationClosed : C.bifurcation

def CriticalPointTheoryClosed (C : CriticalPointTheoryPackage) : Prop :=
  C.palaisSmaleCondition ∧ C.criticalPoints ∧ C.morseTheory ∧ C.bifurcation

theorem critical_point_theory_closed_from_evidence (C : CriticalPointTheoryPackage) (Ev : CriticalPointTheoryEvidence C) :
    CriticalPointTheoryClosed C := by
  exact And.intro Ev.palaisSmaleConditionClosed (And.intro Ev.criticalPointsClosed (And.intro Ev.morseTheoryClosed Ev.bifurcationClosed))

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse