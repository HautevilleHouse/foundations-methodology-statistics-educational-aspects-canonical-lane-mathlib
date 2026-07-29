import canonicalLaneMathlib.AdmissibleClass
import StatisticalModelSpace
import NeymanPearsonLemma
import MLEConsistency

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure StatisticalInferencePackage (M : StatisticalModel) where
  sufficiency : SufficientStatistic M
  exponentialFamily : ExponentialFamily M
  hypothesisTest : NeymanPearsonHypothesis
  mle : MaximumLikelihoodEstimator

structure StatisticalInferenceEvidence (M : StatisticalModel) (P : StatisticalInferencePackage M) where
  modelClosed : StatisticalModelClosed M
  sufficiencyFactorizationClosed : P.sufficiency.factorization
  exponentialCanonicalFormClosed : P.exponentialFamily.canonicalForm
  neymanPearsonOptimalityClosed : NeymanPearsonClosed P.hypothesisTest
  mleConsistencyClosed : MLEConsistencyClosed P.mle

def StatisticalInferenceClosed (M : StatisticalModel) (P : StatisticalInferencePackage M) : Prop :=
  StatisticalModelClosed M ∧
  P.sufficiency.factorization ∧
  P.exponentialFamily.canonicalForm ∧
  NeymanPearsonClosed P.hypothesisTest ∧
  MLEConsistencyClosed P.mle

theorem statistical_inference_closed_from_evidence (M : StatisticalModel) (P : StatisticalInferencePackage M)
    (E : StatisticalInferenceEvidence M P) : StatisticalInferenceClosed M P := by
  exact And.intro E.modelClosed
    (And.intro E.sufficiencyFactorizationClosed
      (And.intro E.exponentialCanonicalFormClosed
        (And.intro E.neymanPearsonOptimalityClosed E.mleConsistencyClosed)))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse