import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure AsymptoticNormalityPackage where
  estimatorSequence : Type u
  limitingCovariance : Type v
  regularityConditions : Prop
  fisherInformationNonzero : Prop
  convergenceInDistribution : Prop
  efficiencyProperty : Prop

structure AsymptoticNormalityEvidence (A : AsymptoticNormalityPackage) where
  regularityConditionsClosed : A.regularityConditions
  fisherInformationNonzeroClosed : A.fisherInformationNonzero
  convergenceInDistributionClosed : A.convergenceInDistribution
  efficiencyPropertyClosed : A.efficiencyProperty

def AsymptoticNormalityClosed (A : AsymptoticNormalityPackage) : Prop :=
  A.regularityConditions ∧ A.fisherInformationNonzero ∧ A.convergenceInDistribution ∧ A.efficiencyProperty

theorem asymptotic_normality_closed_from_evidence (A : AsymptoticNormalityPackage) (E : AsymptoticNormalityEvidence A) :
    AsymptoticNormalityClosed A := by
  exact And.intro E.regularityConditionsClosed
    (And.intro E.fisherInformationNonzeroClosed
      (And.intro E.convergenceInDistributionClosed E.efficiencyPropertyClosed))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse