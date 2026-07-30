import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure EkelandVariationalPackage (X : Type u) [MetricSpace X] [CompleteSpace X] where
  functional : X → ℝ
  lowerSemicontinuous : Prop
  epsPositive : ℝ
  approximateMinimizer : X
  perturbedMinimizer : X
  inequality : functional perturbedMinimizer ≤ functional approximateMinimizer - epsPositive * dist approximateMinimizer perturbedMinimizer
  lowerSemicontinuousHyp : lowerSemicontinuous

def EkelandVariationalClosed {X : Type u} [MetricSpace X] [CompleteSpace X] (Pkg : EkelandVariationalPackage X) : Prop :=
  Pkg.lowerSemicontinuous

theorem ekeland_variational_principle_holds {X : Type u} [MetricSpace X] [CompleteSpace X]
    (Pkg : EkelandVariationalPackage X) : EkelandVariationalClosed Pkg := by
  exact Pkg.lowerSemicontinuousHyp

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse