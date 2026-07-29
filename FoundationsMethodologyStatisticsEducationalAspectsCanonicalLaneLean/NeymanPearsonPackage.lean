import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.ExponentialFamilyPackage

/-!
# Neyman-Pearson Lemma Package
-/

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure NeymanPearsonPackage where
  hypothesisTest : Type
  likelihoodRatio : Type
  mostPowerfulTest : Prop
  neymanPearsonLemma : Prop
  uniformlyMostPowerful : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  mostPowerfulTestClosed : N.mostPowerfulTest
  neymanPearsonLemmaClosed : N.neymanPearsonLemma
  uniformlyMostPowerfulClosed : N.uniformlyMostPowerful

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.mostPowerfulTest ∧ N.neymanPearsonLemma ∧ N.uniformlyMostPowerful

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (E : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro E.mostPowerfulTestClosed
    (And.intro E.neymanPearsonLemmaClosed E.uniformlyMostPowerfulClosed)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse