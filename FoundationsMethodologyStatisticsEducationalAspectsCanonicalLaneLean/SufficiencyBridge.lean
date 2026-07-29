import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure SufficiencyPackage where
  statistic : Type u
  conditionalDistribution : Type v
  factorizationCriterion : Prop
  minimalSufficient : Prop
  completeness : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficientClosed : S.minimalSufficient
  completenessClosed : S.completeness

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationCriterion ∧ S.minimalSufficient ∧ S.completeness

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationCriterionClosed
    (And.intro E.minimalSufficientClosed E.completenessClosed)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse