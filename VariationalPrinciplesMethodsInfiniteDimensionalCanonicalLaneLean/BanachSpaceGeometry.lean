import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure BanachSpacePackage where
  space : Type u
  norm : space → ℝ
  completeness : Prop
  dualSpace : Type v
  weakTopology : Prop

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  completenessClosed : B.completeness
  weakTopologyClosed : B.weakTopology

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.completeness ∧ B.weakTopology

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.completenessClosed E.weakTopologyClosed

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse