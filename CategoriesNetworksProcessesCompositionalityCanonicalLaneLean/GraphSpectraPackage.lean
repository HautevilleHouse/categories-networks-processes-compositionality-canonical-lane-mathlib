import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure GraphSpectraPackage where
  adjacencyMatrix : Type u → Type v
  eigenvalues : Type w
  spectrumDecomposition : Prop
  spectralRadiusBound : Prop
  eigenvalueMultiplicities : Prop

structure GraphSpectraEvidence (G : GraphSpectraPackage) where
  spectrumDecompositionClosed : G.spectrumDecomposition
  spectralRadiusBoundClosed : G.spectralRadiusBound
  eigenvalueMultiplicitiesClosed : G.eigenvalueMultiplicities

def GraphSpectraClosed (G : GraphSpectraPackage) : Prop :=
  G.spectrumDecomposition ∧ G.spectralRadiusBound ∧ G.eigenvalueMultiplicities

theorem graph_spectra_closed_from_evidence (G : GraphSpectraPackage)
    (E : GraphSpectraEvidence G) : GraphSpectraClosed G := by
  exact And.intro E.spectrumDecompositionClosed
    (And.intro E.spectralRadiusBoundClosed E.eigenvalueMultiplicitiesClosed)

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse
