import FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure StatisticsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure StatisticsAdmittedObject where
  space : StatisticsSpace
  sampleSpace : Prop
  parameterSpace : Prop
  modelDimension : Nat
  sufficientStatistic : Type
  exponentialFamily : Prop
  neymanPearsonLemma : Prop
  mleConsistency : Prop
  conclusion : sampleSpace ∧ parameterSpace ∧ exponentialFamily ∧ neymanPearsonLemma ∧ mleConsistency

structure StatisticsEndgameState where
  object : StatisticsAdmittedObject

def StatisticsWitnessClosed (O : StatisticsAdmittedObject) : Prop :=
  O.sampleSpace ∧ O.parameterSpace ∧ O.exponentialFamily ∧ O.neymanPearsonLemma ∧ O.mleConsistency

end FoundationsMethodologyStatisticsEducationalAspectsCanonicalLaneLean
end HautevilleHouse