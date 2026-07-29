import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure NeymanPearsonStructure where
  nullHypothesis : Type u
  alternativeHypothesis : Type v
  likelihoodRatioTest : Type w
  mostPowerful : Prop
  sizeAlpha : Prop
  mostPowerfulClosed : mostPowerful
  sizeAlphaClosed : sizeAlpha

def NeymanPearsonClosed (N : NeymanPearsonStructure) : Prop :=
  N.mostPowerful ∧ N.sizeAlpha

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonStructure) : NeymanPearsonClosed N :=
  And.intro N.mostPowerfulClosed N.sizeAlphaClosed

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse