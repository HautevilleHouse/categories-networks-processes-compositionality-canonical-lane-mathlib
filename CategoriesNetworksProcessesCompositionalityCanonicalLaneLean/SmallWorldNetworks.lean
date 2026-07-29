import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure SmallWorldNetworkPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  smallWorldProperty : Prop
  rewiringProbability : ℝ
  degreeDistribution : List ℕ

structure SmallWorldNetworkEvidence (S : SmallWorldNetworkPackage) where
  clusteringCoefficientHigh : S.clusteringCoefficient > 0.5
  averagePathLengthLow : S.averagePathLength < 10
  smallWorldPropertyClosed : S.smallWorldProperty

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.clusteringCoefficient > 0.5 ∧ S.averagePathLength < 10 ∧ S.smallWorldProperty

theorem small_world_network_closed_from_evidence (S : SmallWorldNetworkPackage) (E : SmallWorldNetworkEvidence S) :
    SmallWorldNetworkClosed S := by
  exact And.intro E.clusteringCoefficientHigh (And.intro E.averagePathLengthLow E.smallWorldPropertyClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
