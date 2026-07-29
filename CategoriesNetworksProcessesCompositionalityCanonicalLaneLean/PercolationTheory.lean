import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationPackage where
  criticalProbability : Prop
  infiniteClusterExists : Prop
  clusterSizeDistribution : Prop
  percolationThreshold : Prop

structure PercolationEvidence (P : PercolationPackage) where
  criticalProbabilityClosed : P.criticalProbability
  infiniteClusterExistsClosed : P.infiniteClusterExists
  clusterSizeDistributionClosed : P.clusterSizeDistribution
  percolationThresholdClosed : P.percolationThreshold

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.criticalProbability ∧ P.infiniteClusterExists ∧ P.clusterSizeDistribution ∧ P.percolationThreshold

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.criticalProbabilityClosed (And.intro E.infiniteClusterExistsClosed
    (And.intro E.clusterSizeDistributionClosed E.percolationThresholdClosed))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse