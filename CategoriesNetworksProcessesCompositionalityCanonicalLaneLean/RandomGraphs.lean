import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure RandomGraphPackage where
  erdosRenyiModel : Prop
  connectivityThreshold : Prop
  phaseTransition : Prop
  giantComponent : Prop

structure RandomGraphEvidence (P : RandomGraphPackage) where
  erdosRenyiModelClosed : P.erdosRenyiModel
  connectivityThresholdClosed : P.connectivityThreshold
  phaseTransitionClosed : P.phaseTransition
  giantComponentClosed : P.giantComponent

def RandomGraphClosed (P : RandomGraphPackage) : Prop :=
  P.erdosRenyiModel ∧ P.connectivityThreshold ∧ P.phaseTransition ∧ P.giantComponent

theorem random_graph_closed_from_evidence (P : RandomGraphPackage) (E : RandomGraphEvidence P) :
    RandomGraphClosed P := by
  exact And.intro E.erdosRenyiModelClosed (And.intro E.connectivityThresholdClosed
    (And.intro E.phaseTransitionClosed E.giantComponentClosed))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse