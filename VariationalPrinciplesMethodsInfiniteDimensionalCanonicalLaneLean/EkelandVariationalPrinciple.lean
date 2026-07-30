import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean.BanachSpaceGeometry

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure EkelandVariationalPackage (B : BanachSpacePackage) where
  lowerSemicontinuous : Prop
  boundedBelow : Prop
  perturbationExists : Prop
  perturbedMinimizer : Prop

structure EkelandVariationalEvidence {B : BanachSpacePackage} (E : EkelandVariationalPackage B) where
  lowerSemicontinuousClosed : E.lowerSemicontinuous
  boundedBelowClosed : E.boundedBelow
  perturbationExistsClosed : E.perturbationExists
  perturbedMinimizerClosed : E.perturbedMinimizer

def EkelandVariationalClosed {B : BanachSpacePackage} (E : EkelandVariationalPackage B) : Prop :=
  E.lowerSemicontinuous ∧ E.boundedBelow ∧ E.perturbationExists ∧ E.perturbedMinimizer

theorem ekeland_variational_closed_from_evidence {B : BanachSpacePackage}
    (E : EkelandVariationalPackage B) (Ev : EkelandVariationalEvidence E) :
    EkelandVariationalClosed E := by
  exact And.intro Ev.lowerSemicontinuousClosed
    (And.intro Ev.boundedBelowClosed
      (And.intro Ev.perturbationExistsClosed Ev.perturbedMinimizerClosed))

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse