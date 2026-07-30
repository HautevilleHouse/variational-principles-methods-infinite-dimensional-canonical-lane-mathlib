import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Sobolev

namespace HautevilleHouse
namespace VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type
  exponent : ℝ
  embeddingType : Type
  compactEmbedding : Prop
  reflexivity : Prop

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.compactEmbedding ∧ S.reflexivity

end VariationalPrinciplesMethodsInfiniteDimensionalCanonicalLaneLean
end HautevilleHouse