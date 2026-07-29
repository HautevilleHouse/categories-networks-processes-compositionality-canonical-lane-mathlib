import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure GraphPackage where
  vertexSet : Type u
  edgeSet : Type v
  adjacency : vertexSet → vertexSet → Prop
  loopFree : ¬ (∃ v, adjacency v v)
  symmetric : ∀ u v, adjacency u v → adjacency v u

structure GraphEvidence (G : GraphPackage) where
  loopFreeClosed : G.loopFree
  symmetricClosed : G.symmetric

def GraphClosed (G : GraphPackage) : Prop :=
  G.loopFree ∧ G.symmetric

theorem graph_closed_from_evidence (G : GraphPackage) (E : GraphEvidence G) :
    GraphClosed G := by
  exact And.intro E.loopFreeClosed E.symmetricClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse