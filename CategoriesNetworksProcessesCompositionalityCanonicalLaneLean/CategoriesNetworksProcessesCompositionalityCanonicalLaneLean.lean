-- This module is the root of the CategoriesNetworksProcessesCompositionalityCanonicalLaneLean Lean proof package.
import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass
import BridgeLemmas
import FinalTheorem
import NetworkSpectra
import PercolationTheory
import SmallWorldNetworks
import RandomGraphs

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse