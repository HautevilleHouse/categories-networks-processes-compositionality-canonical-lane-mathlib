import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure ProcessCompositionPackage where
  processCategory : Type u
  compositionLaw : Prop
  sequentialComposition : Prop
  parallelComposition : Prop
  interactionProtocol : Prop

def ProcessCompositionClosed (P : ProcessCompositionPackage) : Prop :=
  P.compositionLaw ∧ P.sequentialComposition ∧ P.parallelComposition ∧ P.interactionProtocol

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
