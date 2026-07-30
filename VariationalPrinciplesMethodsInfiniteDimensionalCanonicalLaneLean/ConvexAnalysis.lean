import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure ConvexAnalysisPackage where
  space : Type
  convexFunction : Type
  subdifferential : Prop
  fenchelConjugate : Prop
  dualityGap : Prop

structure ConvexAnalysisEvidence (C : ConvexAnalysisPackage) where
  subdifferentialClosed : C.subdifferential
  fenchelConjugateClosed : C.fenchelConjugate
  dualityGapClosed : C.dualityGap

def ConvexAnalysisClosed (C : ConvexAnalysisPackage) : Prop :=
  C.subdifferential ∧ C.fenchelConjugate ∧ C.dualityGap

theorem convex_analysis_closed_from_evidence (C : ConvexAnalysisPackage) (Ev : ConvexAnalysisEvidence C) :
    ConvexAnalysisClosed C := by
  exact And.intro Ev.subdifferentialClosed (And.intro Ev.fenchelConjugateClosed Ev.dualityGapClosed)

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse