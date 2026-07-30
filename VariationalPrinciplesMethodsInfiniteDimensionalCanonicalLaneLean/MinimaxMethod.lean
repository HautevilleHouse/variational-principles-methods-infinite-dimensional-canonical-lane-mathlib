import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.MetricSpace.Basic

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure MinimaxPackage where
  functional : Type
  targetSet : Type
  palaisSmaleCondition : Prop
  deformationLemma : Prop
  linkingGeometry : Prop

def MinimaxClosed (M : MinimaxPackage) : Prop :=
  M.palaisSmaleCondition ∧ M.deformationLemma ∧ M.linkingGeometry

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse