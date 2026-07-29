import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure ExponentialFamilyStructure where
  sample : Type u
  parameterSpace : Type v
  naturalParameter : Type w
  sufficientStatistic : sample -> Type w
  logPartitionFunction : Prop
  canonicalForm : Prop
  logPartitionFunctionClosed : logPartitionFunction
  canonicalFormClosed : canonicalForm

def ExponentialFamilyClosed (E : ExponentialFamilyStructure) : Prop :=
  E.logPartitionFunction ∧ E.canonicalForm

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyStructure) : ExponentialFamilyClosed E :=
  And.intro E.logPartitionFunctionClosed E.canonicalFormClosed

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse