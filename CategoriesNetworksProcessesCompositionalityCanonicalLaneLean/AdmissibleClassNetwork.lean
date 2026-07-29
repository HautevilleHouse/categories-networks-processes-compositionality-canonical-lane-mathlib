import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkAdmittedObject where
  network : Type u
  topology : TopologicalSpace network
  isSimpleGraph : Prop
  isConnected : Prop
  conclusion : isSimpleGraph ∧ isConnected

structure AdmissibleClass where
  object : NetworkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.isSimpleGraph ∧ A.object.isConnected) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse