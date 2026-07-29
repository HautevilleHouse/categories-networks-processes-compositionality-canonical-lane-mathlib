import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure RandomGraphEnsemblePackage where
  ensembleType : Type u
  edgeProbability : Prop
  degreeDistribution : Prop
  giantComponentEmergence : Prop
  connectivityThreshold : Prop

structure RandomGraphEnsembleEvidence (R : RandomGraphEnsemblePackage) where
  edgeProbabilityClosed : R.edgeProbability
  degreeDistributionClosed : R.degreeDistribution
  giantComponentEmergenceClosed : R.giantComponentEmergence
  connectivityThresholdClosed : R.connectivityThreshold

def RandomGraphEnsembleClosed (R : RandomGraphEnsemblePackage) : Prop :=
  R.edgeProbability ∧ R.degreeDistribution ∧
  R.giantComponentEmergence ∧ R.connectivityThreshold

theorem random_graph_ensemble_closed_from_evidence (R : RandomGraphEnsemblePackage)
    (E : RandomGraphEnsembleEvidence R) : RandomGraphEnsembleClosed R := by
  exact And.intro E.edgeProbabilityClosed
    (And.intro E.degreeDistributionClosed
      (And.intro E.giantComponentEmergenceClosed E.connectivityThresholdClosed))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
