import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure GreenRelationsPackage where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  JRelation : carrier → carrier → Prop
  LRelation : carrier → carrier → Prop
  RRelation : carrier → carrier → Prop
  HRelation : carrier → carrier → Prop
  JEquivalence : Equivalence JRelation
  LEquivalence : Equivalence LRelation
  REquivalence : Equivalence RRelation
  HEquivalence : Equivalence HRelation

structure GreenRelationsEvidence (G : GreenRelationsPackage) where
  JEquivalenceClosed : G.JEquivalence
  LEquivalenceClosed : G.LEquivalence
  REquivalenceClosed : G.REquivalence
  HEquivalenceClosed : G.HEquivalence

def GreenRelationsClosed (G : GreenRelationsPackage) : Prop :=
  G.JEquivalence ∧ G.LEquivalence ∧ G.REquivalence ∧ G.HEquivalence

theorem green_relations_closed_from_evidence (G : GreenRelationsPackage)
    (E : GreenRelationsEvidence G) : GreenRelationsClosed G := by
  exact And.intro E.JEquivalenceClosed
    (And.intro E.LEquivalenceClosed
      (And.intro E.REquivalenceClosed E.HEquivalenceClosed))

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse