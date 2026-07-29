import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure CompositionalNetworkProcessPackage where
  processCategory : Type u
  networkMorphism : Type v
  compositionRule : Prop
  sequentialComposition : Prop
  parallelComposition : Prop
  processNetworkEquivalence : Prop

structure CompositionalNetworkProcessEvidence
    (C : CompositionalNetworkProcessPackage) where
  compositionRuleClosed : C.compositionRule
  sequentialCompositionClosed : C.sequentialComposition
  parallelCompositionClosed : C.parallelComposition
  processNetworkEquivalenceClosed : C.processNetworkEquivalence

def CompositionalNetworkProcessClosed (C : CompositionalNetworkProcessPackage) : Prop :=
  C.compositionRule ∧ C.sequentialComposition ∧
  C.parallelComposition ∧ C.processNetworkEquivalence

theorem compositional_network_process_closed_from_evidence
    (C : CompositionalNetworkProcessPackage)
    (E : CompositionalNetworkProcessEvidence C) :
    CompositionalNetworkProcessClosed C := by
  exact And.intro E.compositionRuleClosed
    (And.intro E.sequentialCompositionClosed
      (And.intro E.parallelCompositionClosed E.processNetworkEquivalenceClosed))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
