import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure SmallWorldPropertiesPackage where
  clusteringCoefficient : Prop
  averagePathLength : Prop
  degreeDistribution : Prop
  clusteringCoefficientClosed : clusteringCoefficient
  averagePathLengthClosed : averagePathLength
  degreeDistributionClosed : degreeDistribution

structure SmallWorldPropertiesEvidence (S : SmallWorldPropertiesPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient
  averagePathLengthClosed : S.averagePathLength
  degreeDistributionClosed : S.degreeDistribution

def SmallWorldPropertiesClosed (S : SmallWorldPropertiesPackage) : Prop :=
  S.clusteringCoefficient ∧ S.averagePathLength ∧ S.degreeDistribution

theorem small_world_properties_closed_from_evidence (S : SmallWorldPropertiesPackage) (E : SmallWorldPropertiesEvidence S) :
    SmallWorldPropertiesClosed S := by
  exact And.intro E.clusteringCoefficientClosed (And.intro E.averagePathLengthClosed E.degreeDistributionClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse