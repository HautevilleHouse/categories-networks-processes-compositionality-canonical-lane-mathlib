import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure ErdosRenyiRandomGraph (n : ℕ) (p : ℝ) where
  vertexCount : ℕ
  edgeProbability : ℝ
  degreeDistribution : ℕ → ℝ
  giantComponentExists : Prop
  graphClosed : Prop

def ErdosRenyiGraphClosed {n : ℕ} {p : ℝ} (G : ErdosRenyiRandomGraph n p) : Prop :=
  G.graphClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
