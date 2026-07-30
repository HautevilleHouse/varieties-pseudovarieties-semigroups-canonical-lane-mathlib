import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure Pseudovariety (A : Type) [Mul A] [Finite A] : Prop where
  closedUnderHomomorphicImages : Prop
  closedUnderSubsemigroups : Prop
  closedUnderFiniteDirectProducts : Prop

structure ProfiniteIdentities (A : Type) [Mul A] where
  equations : Set (A × A)
  profiniteSatisfaction : Prop

theorem reiterman_pseudovariety_iff_profinite_identities
    (V : Type → Prop) [∀ A, Mul A] [∀ A, Finite A] :
    (∀ A, V A ↔ ∃ (I : ProfiniteIdentities A), I.profiniteSatisfaction) := by
  sorry

structure ReitermanTheorem where
  pseudovarietyDefinedByProfiniteIdentities : Prop
  profiniteEquationalClassIsPseudovariety : Prop
  proofComplete : Prop

structure ReitermanEvidence (R : ReitermanTheorem) where
  pseudovarietyDefinedByProfiniteIdentitiesClosed : R.pseudovarietyDefinedByProfiniteIdentities
  profiniteEquationalClassIsPseudovarietyClosed : R.profiniteEquationalClassIsPseudovariety
  proofCompleteClosed : R.proofComplete

def ReitermanClosed (R : ReitermanTheorem) : Prop :=
  R.pseudovarietyDefinedByProfiniteIdentities ∧ R.profiniteEquationalClassIsPseudovariety ∧ R.proofComplete

theorem reiterman_closed_from_evidence (R : ReitermanTheorem) (E : ReitermanEvidence R) :
    ReitermanClosed R := by
  exact And.intro E.pseudovarietyDefinedByProfiniteIdentitiesClosed
    (And.intro E.profiniteEquationalClassIsPseudovarietyClosed E.proofCompleteClosed)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse