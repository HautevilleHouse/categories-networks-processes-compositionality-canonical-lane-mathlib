import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkCompositionality where
  sourceNetwork : Type
  targetNetwork : Type
  compositionMorphism : sourceNetwork → targetNetwork
  preservesConnectivity : Prop
  compClosed : Prop

def NetworkCompositionalityClosed (N : NetworkCompositionality) : Prop :=
  N.compClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
