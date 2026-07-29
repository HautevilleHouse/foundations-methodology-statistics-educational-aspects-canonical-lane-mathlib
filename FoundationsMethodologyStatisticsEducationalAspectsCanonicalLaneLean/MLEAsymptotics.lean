import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

structure MLEPackage where
  parameterSpace : Type u
  logLikelihood : Type v
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEEvidence (M : MLEPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.consistencyClosed
    (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
