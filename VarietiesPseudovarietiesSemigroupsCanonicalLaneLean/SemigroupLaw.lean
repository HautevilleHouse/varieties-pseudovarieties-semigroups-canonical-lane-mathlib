import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure SemigroupPackage where
  carrier : Type u
  op : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, op (op a b) c = op a (op b c)

structure SemigroupEvidence (S : SemigroupPackage) where
  associativityClosed : S.associativity

def SemigroupClosed (S : SemigroupPackage) : Prop :=
  S.associativity

theorem semigroup_closed_from_evidence (S : SemigroupPackage) (E : SemigroupEvidence S) :
    SemigroupClosed S := by
  exact E.associativityClosed

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse