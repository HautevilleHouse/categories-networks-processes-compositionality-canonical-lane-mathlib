import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure ProcessCategory where
  objectType : Type
  processMorphism : objectType → objectType → Type
  identityMorphism : (x : objectType) → processMorphism x x
  compositionMorphism : (x y z : objectType) → processMorphism x y → processMorphism y z → processMorphism x z
  associativity : Prop
  identityLaw : Prop
  categoryClosed : Prop

def ProcessCategoryClosed (C : ProcessCategory) : Prop :=
  C.categoryClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
