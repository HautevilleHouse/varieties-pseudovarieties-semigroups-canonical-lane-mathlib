import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.SemigroupLaw

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure VarietyPackage (S : SemigroupPackage) where
  equations : List (S.carrier → S.carrier → Prop)
  equationalClosure : Prop
  identityPreserved : ∀ eq ∈ equations, eq

structure VarietyEvidence {S : SemigroupPackage} (V : VarietyPackage S) where
  equationalClosureClosed : V.equationalClosure
  identityPreservedClosed : V.identityPreserved

def VarietyClosed {S : SemigroupPackage} (V : VarietyPackage S) : Prop :=
  V.equationalClosure ∧ V.identityPreserved

theorem variety_closed_from_evidence {S : SemigroupPackage} (V : VarietyPackage S) (E : VarietyEvidence V) :
    VarietyClosed V := by
  exact And.intro E.equationalClosureClosed E.identityPreservedClosed

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse