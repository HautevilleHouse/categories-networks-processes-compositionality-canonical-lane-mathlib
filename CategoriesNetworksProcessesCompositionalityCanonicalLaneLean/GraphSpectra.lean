import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure GraphSpectraPackage where
  adjacencyEigenvalues : List ℝ
  laplacianSpectrum : List ℝ
  spectralGap : ℝ
  spectralRadius : ℝ
  expansivityProperty : Prop

structure GraphSpectraEvidence (G : GraphSpectraPackage) where
  spectralGapPositive : G.spectralGap > 0
  spectralRadiusFinite : G.spectralRadius < ∞
  expansivityPropertyClosed : G.expansivityProperty

def GraphSpectraClosed (G : GraphSpectraPackage) : Prop :=
  G.spectralGap > 0 ∧ G.spectralRadius < ∞ ∧ G.expansivityProperty

theorem graph_spectra_closed_from_evidence (G : GraphSpectraPackage) (E : GraphSpectraEvidence G) :
    GraphSpectraClosed G := by
  exact And.intro E.spectralGapPositive (And.intro E.spectralRadiusFinite E.expansivityPropertyClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
