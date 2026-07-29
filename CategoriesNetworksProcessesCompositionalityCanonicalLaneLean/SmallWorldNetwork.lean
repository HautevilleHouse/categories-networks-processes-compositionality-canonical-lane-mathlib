import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.GraphSpectra

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure SmallWorldNetworkPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewiringProbability : ℝ
  smallWorldProperty : Prop
  degreeDistribution : Type

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.smallWorldProperty

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
