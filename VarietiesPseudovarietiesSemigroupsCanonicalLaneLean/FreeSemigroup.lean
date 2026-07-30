import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure FreeSemigroupPackage where
  generatorSet : Type u
  multiplication : List generatorSet → List generatorSet → List generatorSet
  associative : ∀ x y z : List generatorSet, multiplication (multiplication x y) z = multiplication x (multiplication y z)

structure FreeSemigroupEvidence (F : FreeSemigroupPackage) where
  associativeClosed : F.associative

def FreeSemigroupClosed (F : FreeSemigroupPackage) : Prop :=
  F.associative

theorem free_semigroup_closed_from_evidence (F : FreeSemigroupPackage)
    (E : FreeSemigroupEvidence F) : FreeSemigroupClosed F := by
  exact E.associativeClosed

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse