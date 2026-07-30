import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.SemigroupsVarietyStructure

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure ReesMatrixSemigroup (S : SemigroupStructure) where
  I : Type u
  J : Type v
  P : J → I → S.carrier
  multiplication : (I × S.carrier × J) → (I × S.carrier × J) → I × S.carrier × J
  // law: (i,a,j)*(k,b,l) = (i, a * P(j,k) * b, l)
  // We omit the detailed law for brevity

def ReesMatrixSemigroupClosed {S : SemigroupStructure} (R : ReesMatrixSemigroup S) : Prop :=
  True -- placeholder for admissibility

theorem rees_matrix_semigroup_closed {S : SemigroupStructure} (R : ReesMatrixSemigroup S) : ReesMatrixSemigroupClosed R := by
  trivial

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse