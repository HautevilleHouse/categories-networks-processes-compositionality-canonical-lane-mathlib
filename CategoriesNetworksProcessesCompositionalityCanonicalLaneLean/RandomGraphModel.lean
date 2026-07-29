import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure RandomGraphModelPackage where
  graphEnsemble : Type u
  edgeProbability : Type v
  connectivityThreshold : Prop
  degreeDistribution : Prop
  componentSizeDistribution : Prop
  connectivityThresholdClosed : connectivityThreshold
  degreeDistributionClosed : degreeDistribution
  componentSizeDistributionClosed : componentSizeDistribution

structure RandomGraphModelEvidence (R : RandomGraphModelPackage) where
  connectivityThresholdClosed : R.connectivityThreshold
  degreeDistributionClosed : R.degreeDistribution
  componentSizeDistributionClosed : R.componentSizeDistribution

def RandomGraphModelClosed (R : RandomGraphModelPackage) : Prop :=
  R.connectivityThreshold ∧ R.degreeDistribution ∧ R.componentSizeDistribution

theorem random_graph_model_closed_from_evidence (R : RandomGraphModelPackage) (E : RandomGraphModelEvidence R) :
    RandomGraphModelClosed R := by
  exact And.intro E.connectivityThresholdClosed (And.intro E.degreeDistributionClosed E.componentSizeDistributionClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse