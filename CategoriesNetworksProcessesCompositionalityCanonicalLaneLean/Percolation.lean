import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure PercolationPackage where
  criticalProbability : ℝ
  infiniteClusterExists : Prop
  percolationThreshold : ℝ
  phaseTransition : Prop

structure PercolationEvidence (P : PercolationPackage) where
  criticalProbabilityPositive : P.criticalProbability > 0
  infiniteClusterExistsClosed : P.infiniteClusterExists
  phaseTransitionClosed : P.phaseTransition

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.criticalProbability > 0 ∧ P.infiniteClusterExists ∧ P.phaseTransition

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.criticalProbabilityPositive (And.intro E.infiniteClusterExistsClosed E.phaseTransitionClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
