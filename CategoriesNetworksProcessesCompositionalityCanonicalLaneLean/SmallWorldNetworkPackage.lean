import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure SmallWorldNetworkPackage where
  networkModel : Type u
  clusteringCoefficient : Prop
  averagePathLength : Prop
  rewiringProbability : Prop
  smallWorldPhenomenon : Prop

structure SmallWorldNetworkEvidence (S : SmallWorldNetworkPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient
  averagePathLengthClosed : S.averagePathLength
  rewiringProbabilityClosed : S.rewiringProbability
  smallWorldPhenomenonClosed : S.smallWorldPhenomenon

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.clusteringCoefficient ∧ S.averagePathLength ∧
  S.rewiringProbability ∧ S.smallWorldPhenomenon

theorem small_world_network_closed_from_evidence (S : SmallWorldNetworkPackage)
    (E : SmallWorldNetworkEvidence S) : SmallWorldNetworkClosed S := by
  exact And.intro E.clusteringCoefficientClosed
    (And.intro E.averagePathLengthClosed
      (And.intro E.rewiringProbabilityClosed E.smallWorldPhenomenonClosed))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
