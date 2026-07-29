import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure SmallWorldModel where
  rewiringProbability : ℝ
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  isSmallWorld : Prop
  modelClosed : Prop

def SmallWorldModelClosed (M : SmallWorldModel) : Prop :=
  M.modelClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
