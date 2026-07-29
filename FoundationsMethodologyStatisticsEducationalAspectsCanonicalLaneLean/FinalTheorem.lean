import canonicalLaneMathlib.AdmissibleClass
import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.BridgeLemmas
import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

def ConstrainedStatisticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_statistics_endgame (A : AdmissibleClass) :
    ConstrainedStatisticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse