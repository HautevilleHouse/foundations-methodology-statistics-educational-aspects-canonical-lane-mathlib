import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  sufficientStatistic : (sampleSpace → Type w)
  factorizationTheoremHolds : Prop
  exponentialFamilyForm : Prop
  naturalParameterSpace : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationTheoremClosed : S.factorizationTheoremHolds
  exponentialFamilyClosed : S.exponentialFamilyForm
  naturalParameterSpaceClosed : S.naturalParameterSpace

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationTheoremHolds ∧ S.exponentialFamilyForm ∧ S.naturalParameterSpace

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosed
    (And.intro E.exponentialFamilyClosed E.naturalParameterSpaceClosed)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
