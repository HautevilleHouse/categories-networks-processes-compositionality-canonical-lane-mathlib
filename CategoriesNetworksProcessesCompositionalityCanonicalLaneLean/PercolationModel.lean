import canonicalLaneMathlib.AdmissibleClass
import .NetworkGraph

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationPackage {G : GraphPackage} where
  threshold : ℝ
  infiniteClusterExists : Prop
  criticalProb : ℝ
  thresholdCondition : threshold = criticalProb
  clusterExistence : infiniteClusterExists

structure PercolationEvidence {G : GraphPackage} (P : PercolationPackage G) where
  thresholdConditionClosed : P.thresholdCondition
  clusterExistenceClosed : P.clusterExistence

def PercolationClosed {G : GraphPackage} (P : PercolationPackage G) : Prop :=
  P.thresholdCondition ∧ P.clusterExistence

theorem percolation_closed_from_evidence {G : GraphPackage} (P : PercolationPackage G)
    (E : PercolationEvidence P) : PercolationClosed P := by
  exact And.intro E.thresholdConditionClosed E.clusterExistenceClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse