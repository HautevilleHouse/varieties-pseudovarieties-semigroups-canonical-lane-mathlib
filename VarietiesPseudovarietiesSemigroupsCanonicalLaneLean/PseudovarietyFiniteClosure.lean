import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.SemigroupLaw

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure PseudovarietyPackage where
  semigroups : List (SemigroupPackage)
  closedUnderFiniteProducts : Prop
  closedUnderSubsemigroups : Prop
  closedUnderHomomorphicImages : Prop
  pseudovarietyAxioms : closedUnderFiniteProducts ∧ closedUnderSubsemigroups ∧ closedUnderHomomorphicImages

structure PseudovarietyEvidence (P : PseudovarietyPackage) where
  closedUnderFiniteProductsClosed : P.closedUnderFiniteProducts
  closedUnderSubsemigroupsClosed : P.closedUnderSubsemigroups
  closedUnderHomomorphicImagesClosed : P.closedUnderHomomorphicImages

def PseudovarietyClosed (P : PseudovarietyPackage) : Prop :=
  P.closedUnderFiniteProducts ∧ P.closedUnderSubsemigroups ∧ P.closedUnderHomomorphicImages

theorem pseudovariety_closed_from_evidence (P : PseudovarietyPackage) (E : PseudovarietyEvidence P) :
    PseudovarietyClosed P := by
  exact And.intro E.closedUnderFiniteProductsClosed
    (And.intro E.closedUnderSubsemigroupsClosed E.closedUnderHomomorphicImagesClosed)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse