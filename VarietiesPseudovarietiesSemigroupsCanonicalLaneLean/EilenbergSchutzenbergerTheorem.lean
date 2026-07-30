import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure EilenbergSchutzenbergerPackage where
  algebraicStructureClosed : Prop
  profiniteCompletionClosed : Prop
  pseudoidentitiesClosed : Prop

def EilenbergSchutzenbergerClosed (E : EilenbergSchutzenbergerPackage) : Prop :=
  E.algebraicStructureClosed ∧ E.profiniteCompletionClosed ∧ E.pseudoidentitiesClosed

structure EilenbergSchutzenbergerEvidence (E : EilenbergSchutzenbergerPackage) where
  algebraicStructureClosedClosed : E.algebraicStructureClosed
  profiniteCompletionClosedClosed : E.profiniteCompletionClosed
  pseudoidentitiesClosedClosed : E.pseudoidentitiesClosed

theorem eilenberg_schutzenberger_closed_from_evidence
    (E : EilenbergSchutzenbergerPackage) (Ev : EilenbergSchutzenbergerEvidence E) :
    EilenbergSchutzenbergerClosed E := by
  exact And.intro Ev.algebraicStructureClosedClosed
    (And.intro Ev.profiniteCompletionClosedClosed Ev.pseudoidentitiesClosedClosed)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse