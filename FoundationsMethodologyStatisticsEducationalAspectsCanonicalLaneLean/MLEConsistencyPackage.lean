import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.NeymanPearsonPackage

/-!
# MLE Consistency Package
-/

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure MLEConsistencyPackage where
  logLikelihood : Type
  scoreFunction : Type
  fisherInformation : Type
  consistencyTheorem : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  consistencyTheoremClosed : M.consistencyTheorem
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.consistencyTheorem ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_consistency_closed_from_evidence (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) : MLEConsistencyClosed M := by
  exact And.intro E.consistencyTheoremClosed
    (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse