import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationThresholdPackage where
  graphType : Type u
  percolationProcess : Type v
  criticalParameter : Prop
  phaseTransition : Prop
  clusterSizeDistribution : Prop

structure PercolationThresholdEvidence (P : PercolationThresholdPackage) where
  criticalParameterClosed : P.criticalParameter
  phaseTransitionClosed : P.phaseTransition
  clusterSizeDistributionClosed : P.clusterSizeDistribution

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  P.criticalParameter ∧ P.phaseTransition ∧ P.clusterSizeDistribution

theorem percolation_threshold_closed_from_evidence (P : PercolationThresholdPackage)
    (E : PercolationThresholdEvidence P) : PercolationThresholdClosed P := by
  exact And.intro E.criticalParameterClosed
    (And.intro E.phaseTransitionClosed E.clusterSizeDistributionClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
