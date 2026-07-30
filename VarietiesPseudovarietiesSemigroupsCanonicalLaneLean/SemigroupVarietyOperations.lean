import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure SemigroupVarietyOperationsPackage where
  semigroupType : Type u
  multiplication : semigroupType → semigroupType → semigroupType
  associativity : Prop
  identityElement : Option semigroupType
  subvarieties : List String

structure SemigroupVarietyOperationsEvidence (S : SemigroupVarietyOperationsPackage) where
  associativityClosed : S.associativity
  identityElementClosed : S.identityElement = none
  subvarietiesClosed : S.subvarieties = []

def SemigroupVarietyOperationsClosed (S : SemigroupVarietyOperationsPackage) : Prop :=
  S.associativity ∧ S.identityElement = none ∧ S.subvarieties = []

theorem semigroup_variety_operations_closed_from_evidence
    (S : SemigroupVarietyOperationsPackage)
    (E : SemigroupVarietyOperationsEvidence S) : SemigroupVarietyOperationsClosed S := by
  exact And.intro E.associativityClosed
    (And.intro E.identityElementClosed E.subvarietiesClosed)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse