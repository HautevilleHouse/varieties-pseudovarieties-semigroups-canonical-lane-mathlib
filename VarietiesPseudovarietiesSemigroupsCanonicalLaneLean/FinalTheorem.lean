import canonicalLaneMathlib.AdmissibleClass
import VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.BirkhoffTheorem
import VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.ReitermanTheorem

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

def ConstrainedVarietyPseudovarietyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variety_pseudovariety_endgame (A : AdmissibleClass) :
    ConstrainedVarietyPseudovarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse