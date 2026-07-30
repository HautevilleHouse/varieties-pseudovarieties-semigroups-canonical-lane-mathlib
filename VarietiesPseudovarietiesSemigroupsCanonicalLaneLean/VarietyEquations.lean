import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesPseudovarietiesSemigroupsCanonicalLaneLean

structure VarietyEquationPackage where
  lhs : Nat → Nat
  rhs : Nat → Nat
  variableCount : Nat
  variables : List (Nat → Nat)

structure VarietyEquationEvidence (V : VarietyEquationPackage) where
  lhsClosed : V.lhs = V.rhs
  rhsClosed : V.rhs = V.lhs

def VarietyEquationClosed (V : VarietyEquationPackage) : Prop :=
  V.lhs = V.rhs

theorem variety_equation_closed_from_evidence (V : VarietyEquationPackage)
    (E : VarietyEquationEvidence V) : VarietyEquationClosed V := by
  exact Eq.trans E.lhsClosed E.rhsClosed.symm

end VarietiesPseudovarietiesSemigroupsCanonicalLaneLean
end HautevilleHouse