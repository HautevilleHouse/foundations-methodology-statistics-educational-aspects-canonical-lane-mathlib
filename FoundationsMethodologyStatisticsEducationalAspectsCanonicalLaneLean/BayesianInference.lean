import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure BayesianInferencePackage where
  priorDistribution : Prop
  likelihoodFunction : Prop
  posteriorDistribution : Prop
  priorConjugate : Prop
  marginalLikelihood : Prop
  credibleInterval : Prop
  bayesEstimator : Prop

structure BayesianInferenceEvidence (B : BayesianInferencePackage) where
  priorDistributionClosed : B.priorDistribution
  likelihoodFunctionClosed : B.likelihoodFunction
  posteriorDistributionClosed : B.posteriorDistribution
  credibleIntervalClosed : B.credibleInterval
  bayesEstimatorClosed : B.bayesEstimator

def BayesianInferenceClosed (B : BayesianInferencePackage) : Prop :=
  B.priorDistribution ∧ B.likelihoodFunction ∧ B.posteriorDistribution ∧
  B.credibleInterval ∧ B.bayesEstimator

theorem bayesian_inference_closed_from_evidence
    (B : BayesianInferencePackage) (E : BayesianInferenceEvidence B) :
    BayesianInferenceClosed B := by
  exact And.intro E.priorDistributionClosed
    (And.intro E.likelihoodFunctionClosed
      (And.intro E.posteriorDistributionClosed
        (And.intro E.credibleIntervalClosed E.bayesEstimatorClosed)))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse