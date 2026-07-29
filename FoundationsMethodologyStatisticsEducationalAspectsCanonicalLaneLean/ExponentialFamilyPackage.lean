import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.SufficiencyPackage

/-!
# Exponential Family Package
-/

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure ExponentialFamilyPackage where
  naturalParameter : Type
  sufficientStatistic : Type
  logPartitionFunction : Type
  canonicalForm : Prop
  convexSupport : Prop
  caratheodoryTheorem : Prop
  fisherInformation : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  convexSupportClosed : E.convexSupport
  caratheodoryTheoremClosed : E.caratheodoryTheorem
  fisherInformationClosed : E.fisherInformation

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.convexSupport ∧ E.caratheodoryTheorem ∧ E.fisherInformation

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.canonicalFormClosed
    (And.intro Ev.convexSupportClosed
      (And.intro Ev.caratheodoryTheoremClosed Ev.fisherInformationClosed))

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse