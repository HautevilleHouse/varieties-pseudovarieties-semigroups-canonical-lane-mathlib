import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure SemigroupStructure where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)

structure Variety (S : SemigroupStructure) where
  equationalLaws : List (S.carrier → S.carrier → Prop)
  closedUnderHomomorphisms : Prop
  closedUnderSubalgebras : Prop
  closedUnderProducts : Prop

def VarietyClosed {S : SemigroupStructure} (V : Variety S) : Prop :=
  V.closedUnderHomomorphisms ∧ V.closedUnderSubalgebras ∧ V.closedUnderProducts

theorem variety_closed_from_properties {S : SemigroupStructure} (V : Variety S) (h_hom : V.closedUnderHomomorphisms) (h_sub : V.closedUnderSubalgebras) (h_prod : V.closedUnderProducts) : VarietyClosed V := by
  exact And.intro h_hom (And.intro h_sub h_prod)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse