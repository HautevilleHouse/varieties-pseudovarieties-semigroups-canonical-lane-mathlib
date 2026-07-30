import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure PseudovarietyPackage where
  carrier : Type u
  operation : carrier → carrier → carrier
  idempotent : ∀ x : carrier, operation x x = x
  associative : ∀ x y z : carrier, operation (operation x y) z = operation x (operation y z)

structure PseudovarietyEvidence (P : PseudovarietyPackage) where
  idempotentClosed : P.idempotent
  associativeClosed : P.associative

def PseudovarietyClosed (P : PseudovarietyPackage) : Prop :=
  P.idempotent ∧ P.associative

theorem pseudovariety_closed_from_evidence (P : PseudovarietyPackage)
    (E : PseudovarietyEvidence P) : PseudovarietyClosed P := by
  exact And.intro E.idempotentClosed E.associativeClosed

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse