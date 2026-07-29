import CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkPackage where
  vertexCount : Nat
  edgeCount : Nat
  isConnected : Prop
  averageDegree : Float

structure NetworkEvidence (N : NetworkPackage) where
  isConnectedClosed : N.isConnected
  averageDegreeClosed : N.averageDegree > 0.0

def NetworkPackageClosed (N : NetworkPackage) : Prop :=
  N.isConnected ∧ N.averageDegree > 0.0

theorem network_package_closed_from_evidence (N : NetworkPackage) (E : NetworkEvidence N) :
    NetworkPackageClosed N := by
  exact And.intro E.isConnectedClosed E.averageDegreeClosed

end HautevilleHouse
end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
