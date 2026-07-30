import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensional

structure EulerLagrangePackage {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E] where
  functional : (ℝ → E) → ℝ
  integrand : ℝ × E × E → ℝ
  actionIsIntegral : Prop
  integrandSmooth : Prop
  eulerLagrangeEquation : Prop
  boundaryConditions : Prop

structure EulerLagrangeEvidence {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (P : EulerLagrangePackage E) where
  actionIsIntegralClosed : P.actionIsIntegral
  integrandSmoothClosed : P.integrandSmooth
  eulerLagrangeEquationClosed : P.eulerLagrangeEquation
  boundaryConditionsClosed : P.boundaryConditions

def EulerLagrangeClosed {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (P : EulerLagrangePackage E) : Prop :=
  P.actionIsIntegral ∧ P.integrandSmooth ∧ P.eulerLagrangeEquation ∧ P.boundaryConditions

theorem euler_lagrange_closed_from_evidence {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (P : EulerLagrangePackage E) (E' : EulerLagrangeEvidence P) : EulerLagrangeClosed P := by
  exact And.intro E'.actionIsIntegralClosed
    (And.intro E'.integrandSmoothClosed
      (And.intro E'.eulerLagrangeEquationClosed E'.boundaryConditionsClosed))

end VariationalPrinciplesMethodsInfiniteDimensional
end HautevilleHouse
