import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.SemigroupsVarietyStructure

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure Pseudovariety (S : SemigroupStructure) where
  isVariety : Variety S
  closedUnderFiniteProducts : Prop
  closedUnderFiniteSubalgebras : Prop
  closedUnderHomomorphicImages : Prop

def PseudovarietyClosed {S : SemigroupStructure} (P : Pseudovariety S) : Prop :=
  P.closedUnderFiniteProducts ∧ P.closedUnderFiniteSubalgebras ∧ P.closedUnderHomomorphicImages

theorem pseudovariety_closed_from_properties {S : SemigroupStructure} (P : Pseudovariety S) (h_finprod : P.closedUnderFiniteProducts) (h_finsub : P.closedUnderFiniteSubalgebras) (h_hom : P.closedUnderHomomorphicImages) : PseudovarietyClosed P := by
  exact And.intro h_finprod (And.intro h_finsub h_hom)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse