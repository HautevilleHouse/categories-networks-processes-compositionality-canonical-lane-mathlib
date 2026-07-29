import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionality

structure CompositionalityAdmittedObject where
  space : Type
  networkStructure : Prop
  compositionLaw : Prop
  categoricalModel : Type
  morphisms : Type
  processComposition : Prop
  conclusion : processComposition

def CompositionalityWitnessClosed (O : CompositionalityAdmittedObject) : Prop :=
  O.processComposition

end CategoriesNetworksProcessesCompositionality
end HautevilleHouse
