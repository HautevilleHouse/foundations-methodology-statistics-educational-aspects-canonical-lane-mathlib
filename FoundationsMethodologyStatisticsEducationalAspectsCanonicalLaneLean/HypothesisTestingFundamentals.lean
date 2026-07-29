import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure HypothesisTestingFundamentalsPackage where
  testFunction : Type u
  typeIError : ℝ
  typeIIError : ℝ
  powerFunction : Prop
  pValue : Prop
  confidenceInterval : Prop
  uniformlyMostPowerful : Prop

structure HypothesisTestingFundamentalsEvidence (H : HypothesisTestingFundamentalsPackage) where
  typeIErrorClosed : H.typeIError
  typeIIErrorClosed : H.typeIIError
  powerFunctionClosed : H.powerFunction
  pValueClosed : H.pValue
  confidenceIntervalClosed : H.confidenceInterval
  uniformlyMostPowerfulClosed : H.uniformlyMostPowerful

def HypothesisTestingFundamentalsClosed (H : HypothesisTestingFundamentalsPackage) : Prop :=
  H.typeIError ∧ H.typeIIError ∧ H.powerFunction ∧ H.pValue ∧
  H.confidenceInterval ∧ H.uniformlyMostPowerful

theorem hypothesis_testing_fundamentals_closed_from_evidence
    (H : HypothesisTestingFundamentalsPackage) (E : HypothesisTestingFundamentalsEvidence H) :
    HypothesisTestingFundamentalsClosed H := by
  exact And.intro E.typeIErrorClosed
    (And.intro E.typeIIErrorClosed
      (And.intro E.powerFunctionClosed
        (And.intro E.pValueClosed
          (And.intro E.confidenceIntervalClosed E.uniformlyMostPowerfulClosed))))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse