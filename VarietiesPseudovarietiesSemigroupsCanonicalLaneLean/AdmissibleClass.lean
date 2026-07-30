import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure AdmissibleClass where
  object : SemigroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SemigroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse