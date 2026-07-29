import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure RandomGraphPackage where
  numberOfVertices : ℕ
  edgeProbability : ℝ
  connectivityThreshold : Prop
  giantComponent : Prop
  phaseTransition : Prop

def RandomGraphClosed (R : RandomGraphPackage) : Prop :=
  R.connectivityThreshold ∧ R.giantComponent ∧ R.phaseTransition

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
