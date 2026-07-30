import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean.MountainPassTheorem

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure MultipleCriticalPointsPackage {B : BanachSpacePackage} {E : EkelandVariationalPackage B}
    (M : MountainPassPackage E) where
  existenceOfSecondCriticalPoint : Prop
  multiplicityResult : Prop

structure MultipleCriticalPointsEvidence {B : BanachSpacePackage} {E : EkelandVariationalPackage B}
    {M : MountainPassPackage E} (P : MultipleCriticalPointsPackage M) where
  existenceOfSecondCriticalPointClosed : P.existenceOfSecondCriticalPoint
  multiplicityResultClosed : P.multiplicityResult

def MultipleCriticalPointsClosed {B : BanachSpacePackage} {E : EkelandVariationalPackage B}
    {M : MountainPassPackage E} (P : MultipleCriticalPointsPackage M) : Prop :=
  P.existenceOfSecondCriticalPoint ∧ P.multiplicityResult

theorem multiple_critical_points_closed_from_evidence {B : BanachSpacePackage}
    {E : EkelandVariationalPackage B} {M : MountainPassPackage E}
    (P : MultipleCriticalPointsPackage M) (Ev : MultipleCriticalPointsEvidence P) :
    MultipleCriticalPointsClosed P := by
  exact And.intro Ev.existenceOfSecondCriticalPointClosed Ev.multiplicityResultClosed

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse