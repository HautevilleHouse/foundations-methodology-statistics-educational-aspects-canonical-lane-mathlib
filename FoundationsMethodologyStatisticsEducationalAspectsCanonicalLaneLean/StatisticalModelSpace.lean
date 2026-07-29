import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure StatisticalModel where
  sampleSpace : Type u
  parameterSpace : Type v
  densityFamily : parameterSpace -> sampleSpace -> ℝ
  dominatedMeasure : sampleSpace -> ℝ≥0
  measurabilityCondition : Prop
  identifiabilityCondition : Prop

structure SufficientStatistic (M : StatisticalModel) where
  statistic : M.sampleSpace -> ℝ^n
  factorization : Prop
  fisherNeymanCriterion : Prop
  minimalityProperty : Prop

structure ExponentialFamily (M : StatisticalModel) where
  naturalParameter : Type w
  sufficientStatistic : M.sampleSpace -> ℝ^n
  logNormalizer : naturalParameter -> ℝ
  baseMeasure : M.sampleSpace -> ℝ≥0
  canonicalForm : Prop
  regularityCondition : Prop
  cumulantGeneratingFunction : naturalParameter -> ℝ

structure StatisticalModelEvidence (M : StatisticalModel) where
  measurabilityConditionClosed : M.measurabilityCondition
  identifiabilityConditionClosed : M.identifiabilityCondition

def StatisticalModelClosed (M : StatisticalModel) : Prop :=
  M.measurabilityCondition ∧ M.identifiabilityCondition

theorem statistical_model_closed_from_evidence (M : StatisticalModel) (E : StatisticalModelEvidence M) :
    StatisticalModelClosed M := by
  exact And.intro E.measurabilityConditionClosed E.identifiabilityConditionClosed

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse