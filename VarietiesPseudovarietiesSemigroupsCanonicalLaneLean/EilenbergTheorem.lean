import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.PseudovarietyDefinition

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure EilenbergCorrespondence (S : SemigroupStructure) (P : Pseudovariety S) where
  // Varieties of languages correspond to pseudovarieties of semigroups
  languageVariety : Prop
  syntacticSemigroupInPseudovariety : Prop
  correspondenceEstablished : Prop

def EilenbergCorrespondenceClosed {S : SemigroupStructure} {P : Pseudovariety S} (E : EilenbergCorrespondence S P) : Prop :=
  E.languageVariety ∧ E.syntacticSemigroupInPseudovariety ∧ E.correspondenceEstablished

theorem eilenberg_correspondence_closed {S : SemigroupStructure} {P : Pseudovariety S} (E : EilenbergCorrespondence S P) (h_lang : E.languageVariety) (h_syn : E.syntacticSemigroupInPseudovariety) (h_corr : E.correspondenceEstablished) : EilenbergCorrespondenceClosed E := by
  exact And.intro h_lang (And.intro h_syn h_corr)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse