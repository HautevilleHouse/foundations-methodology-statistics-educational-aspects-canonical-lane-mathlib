import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.MathlibObjects

/-!
# Sufficiency Package
-/

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatisticDefined : Prop
  factorizationCriterion : Prop
  minimalSufficiency : Prop
  completeness : Prop
  basuTheorem : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientStatisticDefinedClosed : S.sufficientStatisticDefined
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficiencyClosed : S.minimalSufficiency
  completenessClosed : S.completeness
  basuTheoremClosed : S.basuTheorem

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatisticDefined ∧ S.factorizationCriterion ∧ S.minimalSufficiency ∧ S.completeness ∧ S.basuTheorem

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro E.sufficientStatisticDefinedClosed
    (And.intro E.factorizationCriterionClosed
      (And.intro E.minimalSufficiencyClosed
        (And.intro E.completenessClosed E.basuTheoremClosed)))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse