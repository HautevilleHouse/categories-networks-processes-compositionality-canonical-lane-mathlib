import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesNetworksProcessesCompositionalityCanonicalLaneLean.AdmissibleClassNetwork

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure ProcessNetworkPackage where
  compositionalityLaw : Prop
  decompositionConservative : Prop
  parallelCompositionCompatible : Prop
  sequentialCompositionCompatible : Prop
  feedbackLoopAdmissible : Prop

structure ProcessNetworkEvidence (P : ProcessNetworkPackage) where
  compositionalityLawClosed : P.compositionalityLaw
  decompositionConservativeClosed : P.decompositionConservative
  parallelCompositionCompatibleClosed : P.parallelCompositionCompatible
  sequentialCompositionCompatibleClosed : P.sequentialCompositionCompatible
  feedbackLoopAdmissibleClosed : P.feedbackLoopAdmissible

def ProcessNetworkClosed (P : ProcessNetworkPackage) : Prop :=
  P.compositionalityLaw ∧ P.decompositionConservative ∧ P.parallelCompositionCompatible ∧
  P.sequentialCompositionCompatible ∧ P.feedbackLoopAdmissible

theorem process_network_closed_from_evidence (P : ProcessNetworkPackage) (E : ProcessNetworkEvidence P) :
    ProcessNetworkClosed P := by
  exact And.intro E.compositionalityLawClosed
    (And.intro E.decompositionConservativeClosed
      (And.intro E.parallelCompositionCompatibleClosed
        (And.intro E.sequentialCompositionCompatibleClosed E.feedbackLoopAdmissibleClosed)))

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse