import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NetworkAdmittedObject where
  space : NetworkSpace
  network : Prop
  smallWorldProperty : Prop
  conclusion : smallWorldProperty

structure NetworkEndgameState where
  object : NetworkAdmittedObject

def NetworkWitnessClosed (O : NetworkAdmittedObject) : Prop :=
  O.smallWorldProperty

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse