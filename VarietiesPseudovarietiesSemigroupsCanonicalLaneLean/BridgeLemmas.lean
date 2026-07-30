import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesPseudovarietiesSemigroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SemigroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse