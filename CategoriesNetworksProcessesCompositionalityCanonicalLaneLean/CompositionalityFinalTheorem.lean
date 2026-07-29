import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.SmallWorldBridgeLemmas

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedNetworkClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_network_endgame (A : AdmissibleClass) :
    ConstrainedNetworkClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
