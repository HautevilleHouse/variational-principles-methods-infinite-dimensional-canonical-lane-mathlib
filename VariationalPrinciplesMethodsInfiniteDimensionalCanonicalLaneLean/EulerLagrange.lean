import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Variations

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure EulerLagrangePackage where
  lagrangian : Type
  smoothness : Prop
  firstVariationFormula : Prop
  necessaryCondition : Prop
  boundaryTermsControlled : Prop

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.firstVariationFormula ∧ E.necessaryCondition ∧ E.boundaryTermsControlled

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse