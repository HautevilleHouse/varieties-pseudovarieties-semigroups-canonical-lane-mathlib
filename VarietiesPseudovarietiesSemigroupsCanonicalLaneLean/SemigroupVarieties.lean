import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure SemigroupVarietyPackage where
  signature : Nat
  identities : List (Nat × Nat)
  closedUnderHomomorphicImages : Prop
  closedUnderSubsemigroups : Prop
  closedUnderDirectProducts : Prop

structure SemigroupVarietyEvidence (V : SemigroupVarietyPackage) where
  closedUnderHomomorphicImagesClosed : V.closedUnderHomomorphicImages
  closedUnderSubsemigroupsClosed : V.closedUnderSubsemigroups
  closedUnderDirectProductsClosed : V.closedUnderDirectProducts

def SemigroupVarietyClosed (V : SemigroupVarietyPackage) : Prop :=
  V.closedUnderHomomorphicImages ∧ V.closedUnderSubsemigroups ∧ V.closedUnderDirectProducts

theorem semigroup_variety_closed_from_evidence
    (V : SemigroupVarietyPackage) (E : SemigroupVarietyEvidence V) :
    SemigroupVarietyClosed V := by
  exact And.intro E.closedUnderHomomorphicImagesClosed
    (And.intro E.closedUnderSubsemigroupsClosed E.closedUnderDirectProductsClosed)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse