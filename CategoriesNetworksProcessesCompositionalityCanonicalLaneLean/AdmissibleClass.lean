import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
