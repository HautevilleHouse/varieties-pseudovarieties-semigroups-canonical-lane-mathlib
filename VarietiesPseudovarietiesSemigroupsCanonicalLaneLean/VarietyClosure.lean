import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure VarietyClosurePackage where
  laws : List String
  closedUnderSubsemigroups : Prop
  closedUnderHomomorphicImages : Prop
  closedUnderDirectProducts : Prop
  closureConditions : Prop

structure VarietyClosureEvidence (V : VarietyClosurePackage) where
  lawsClosed : V.laws = []
  closedUnderSubsemigroupsClosed : V.closedUnderSubsemigroups
  closedUnderHomomorphicImagesClosed : V.closedUnderHomomorphicImages
  closedUnderDirectProductsClosed : V.closedUnderDirectProducts
  closureConditionsClosed : V.closureConditions

def VarietyClosureClosed (V : VarietyClosurePackage) : Prop :=
  V.laws = [] ∧ V.closedUnderSubsemigroups ∧ V.closedUnderHomomorphicImages ∧
  V.closedUnderDirectProducts ∧ V.closureConditions

theorem variety_closure_closed_from_evidence (V : VarietyClosurePackage)
    (E : VarietyClosureEvidence V) : VarietyClosureClosed V := by
  exact And.intro E.lawsClosed
    (And.intro E.closedUnderSubsemigroupsClosed
      (And.intro E.closedUnderHomomorphicImagesClosed
        (And.intro E.closedUnderDirectProductsClosed E.closureConditionsClosed)))

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse