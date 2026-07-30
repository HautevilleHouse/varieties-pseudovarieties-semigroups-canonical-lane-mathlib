import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.SemigroupsVarietyStructure

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure BurnsideVariety (S : SemigroupStructure) where
  exponent : ℕ
  law : ∀ a : S.carrier, S.multiplication a a = a
  exponentLaw : ∀ a : S.carrier, (S.multiplication a) ^ exponent = a

def BurnsideVarietyClosed {S : SemigroupStructure} (B : BurnsideVariety S) : Prop :=
  B.law ∧ B.exponentLaw

theorem burnside_variety_closed_from_properties {S : SemigroupStructure} (B : BurnsideVariety S) (h_law : B.law) (h_exponent : B.exponentLaw) : BurnsideVarietyClosed B := by
  exact And.intro h_law h_exponent

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse