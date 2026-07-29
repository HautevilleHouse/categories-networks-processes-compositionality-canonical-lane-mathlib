import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.NetworkGraphAdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationEvidence where
  edgeRemovalModel : Prop
  connectivityThreshold : Prop
  clusterSizeDistribution : Prop
  percolationProbability : Prop
  percolationThresholdClosed : Prop
  clusterSizeDistributionClosed : Prop

theorem percolation_closed_from_evidence (E : PercolationEvidence) :
  E.percolationThresholdClosed ∧ E.clusterSizeDistributionClosed := by
  exact And.intro E.percolationThresholdClosed E.clusterSizeDistributionClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
