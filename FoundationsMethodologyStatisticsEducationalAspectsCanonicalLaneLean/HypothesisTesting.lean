import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure HypothesisTestingPackage where
  nullHypothesis : Type u
  alternativeHypothesis : Type v
  testProcedure : Type w
  significanceLevel : Prop
  powerFunction : Prop
  uniformlyMostPowerful : Prop
  unbiasedness : Prop

structure HypothesisTestingEvidence (H : HypothesisTestingPackage) where
  significanceLevelClosed : H.significanceLevel
  powerFunctionClosed : H.powerFunction
  uniformlyMostPowerfulClosed : H.uniformlyMostPowerful
  unbiasednessClosed : H.unbiasedness

def HypothesisTestingClosed (H : HypothesisTestingPackage) : Prop :=
  H.significanceLevel ∧ H.powerFunction ∧ H.uniformlyMostPowerful ∧ H.unbiasedness

theorem hypothesis_testing_closed_from_evidence (H : HypothesisTestingPackage) (E : HypothesisTestingEvidence H) :
    HypothesisTestingClosed H := by
  exact And.intro E.significanceLevelClosed
    (And.intro E.powerFunctionClosed
      (And.intro E.uniformlyMostPowerfulClosed E.unbiasednessClosed))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse