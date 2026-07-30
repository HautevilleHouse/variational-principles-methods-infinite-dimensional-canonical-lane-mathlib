import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure DirectMethodPackage where
  functional : Type
  domain : Type
  lowerSemicontinuous : Prop
  coercivity : Prop
  sequentialCompactness : Prop

def DirectMethodClosed (D : DirectMethodPackage) : Prop :=
  D.lowerSemicontinuous ∧ D.coercivity ∧ D.sequentialCompactness

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse