import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure SemigroupFreeProduct (A B : Type) [Mul A] [Mul B] where
  carrier : Type
  embedLeft : A → carrier
  embedRight : B → carrier
  universalProperty : Prop
  freeProductExists : Prop

structure SemigroupFreeProductEvidence {A B : Type} [Mul A] [Mul B]
    (P : SemigroupFreeProduct A B) where
  universalPropertyClosed : P.universalProperty
  freeProductExistsClosed : P.freeProductExists

def SemigroupFreeProductClosed {A B : Type} [Mul A] [Mul B]
    (P : SemigroupFreeProduct A B) : Prop :=
  P.universalProperty ∧ P.freeProductExists

theorem semigroup_free_product_closed_from_evidence
    {A B : Type} [Mul A] [Mul B] (P : SemigroupFreeProduct A B)
    (E : SemigroupFreeProductEvidence P) : SemigroupFreeProductClosed P := by
  exact And.intro E.universalPropertyClosed E.freeProductExistsClosed

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse