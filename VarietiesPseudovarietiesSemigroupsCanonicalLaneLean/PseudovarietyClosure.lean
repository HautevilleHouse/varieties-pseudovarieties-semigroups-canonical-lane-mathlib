import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure PseudovarietyClosurePackage where
  finiteSemigroups : Set String
  closedUnderSubsemigroups : Prop
  closedUnderHomomorphicImages : Prop
  closedUnderFiniteDirectProducts : Prop
  closureConditions : Prop

structure PseudovarietyClosureEvidence (P : PseudovarietyClosurePackage) where
  finiteSemigroupsClosed : P.finiteSemigroups = {}
  closedUnderSubsemigroupsClosed : P.closedUnderSubsemigroups
  closedUnderHomomorphicImagesClosed : P.closedUnderHomomorphicImages
  closedUnderFiniteDirectProductsClosed : P.closedUnderFiniteDirectProducts
  closureConditionsClosed : P.closureConditions

def PseudovarietyClosureClosed (P : PseudovarietyClosurePackage) : Prop :=
  P.finiteSemigroups = {} ∧ P.closedUnderSubsemigroups ∧ P.closedUnderHomomorphicImages ∧
  P.closedUnderFiniteDirectProducts ∧ P.closureConditions

theorem pseudovariety_closure_closed_from_evidence (P : PseudovarietyClosurePackage)
    (E : PseudovarietyClosureEvidence P) : PseudovarietyClosureClosed P := by
  exact And.intro E.finiteSemigroupsClosed
    (And.intro E.closedUnderSubsemigroupsClosed
      (And.intro E.closedUnderHomomorphicImagesClosed
        (And.intro E.closedUnderFiniteDirectProductsClosed E.closureConditionsClosed)))

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse