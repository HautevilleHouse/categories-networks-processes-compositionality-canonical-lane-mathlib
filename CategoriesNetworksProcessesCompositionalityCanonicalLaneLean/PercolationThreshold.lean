import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.GraphSpectra

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationThresholdPackage where
  criticalProbability : ℝ
  infiniteClusterExists : Prop
  clusterSizeDistribution : Type
  percolationProbability : Prop
  scalingLaws : Prop

structure PercolationThresholdEvidence (P : PercolationThresholdPackage) where
  criticalProbabilityClosed : P.criticalProbability > 0
  percolationProbabilityClosed : P.percolationProbability
  scalingLawsClosed : P.scalingLaws

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  P.criticalProbability > 0 ∧ P.percolationProbability ∧ P.scalingLaws

theorem percolation_threshold_closed_from_evidence (P : PercolationThresholdPackage) (E : PercolationThresholdEvidence P) : PercolationThresholdClosed P :=
  And.intro E.criticalProbabilityClosed (And.intro E.percolationProbabilityClosed E.scalingLawsClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
