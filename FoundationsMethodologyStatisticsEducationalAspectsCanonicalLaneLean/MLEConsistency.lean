import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure MLEPackage where
  likelihoodFunction : Type u
  estimator : Type v
  consistencyAssumptions : Prop
  identifiability : Prop
  compactness : Prop
  continuity : Prop
  consistencyHolds : Prop

structure MLEEvidence (M : MLEPackage) where
  consistencyAssumptionsClosed : M.consistencyAssumptions
  identifiabilityClosed : M.identifiability
  compactnessClosed : M.compactness
  continuityClosed : M.continuity
  consistencyHoldsClosed : M.consistencyHolds

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistencyAssumptions ∧ M.identifiability ∧ M.compactness ∧ M.continuity ∧ M.consistencyHolds

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.consistencyAssumptionsClosed
    (And.intro E.identifiabilityClosed
      (And.intro E.compactnessClosed
        (And.intro E.continuityClosed E.consistencyHoldsClosed)))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse