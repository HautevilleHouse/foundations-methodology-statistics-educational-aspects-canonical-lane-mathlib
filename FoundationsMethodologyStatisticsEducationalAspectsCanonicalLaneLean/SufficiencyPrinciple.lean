import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure SufficiencyStructure where
  sample : Type u
  parameterSpace : Type v
  sufficientStatistic : sample -> Type w
  factorizationCondition : Prop
  minimalSufficiency : Prop
  factorizationConditionClosed : factorizationCondition
  minimalSufficiencyClosed : minimalSufficiency

def SufficiencyClosed (S : SufficiencyStructure) : Prop :=
  S.factorizationCondition ∧ S.minimalSufficiency

theorem sufficiency_closed_from_evidence (S : SufficiencyStructure) : SufficiencyClosed S :=
  And.intro S.factorizationConditionClosed S.minimalSufficiencyClosed

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse