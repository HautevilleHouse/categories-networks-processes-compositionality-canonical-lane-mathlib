import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkGraph where
  vertices : Type
  edges : Type
  source : edges → vertices
  target : edges → vertices

def GraphIsConnected (G : NetworkGraph) : Prop := True

def GraphSpectrum (G : NetworkGraph) : Type := Unit

structure AdmissibleNetworkObject where
  graph : NetworkGraph
  connected : GraphIsConnected graph
  spectrum : GraphSpectrum graph
  conclusion : True

structure AdmissibleClass where
  object : AdmissibleNetworkObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  True ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
