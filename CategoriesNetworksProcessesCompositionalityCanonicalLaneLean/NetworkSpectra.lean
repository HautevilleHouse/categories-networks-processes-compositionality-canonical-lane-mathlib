import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesNetworksProcessesCompositionalityCanonicalLaneLean

structure NetworkSpectraPackage where
  adjacencyMatrix : Type u
  laplacianMatrix : Type v
  eigenvalueSpectrum : Type w
  spectralGap : Prop
  eigenvalueDistribution : Prop
  spectralGapClosed : spectralGap
  eigenvalueDistributionClosed : eigenvalueDistribution

structure NetworkSpectraEvidence (N : NetworkSpectraPackage) where
  spectralGapClosed : N.spectralGap
  eigenvalueDistributionClosed : N.eigenvalueDistribution

def NetworkSpectraClosed (N : NetworkSpectraPackage) : Prop :=
  N.spectralGap ∧ N.eigenvalueDistribution

theorem network_spectra_closed_from_evidence (N : NetworkSpectraPackage) (E : NetworkSpectraEvidence N) :
    NetworkSpectraClosed N := by
  exact And.intro E.spectralGapClosed E.eigenvalueDistributionClosed

end CategoriesNetworksProcessesCompositionalityCanonicalLaneLean
end HautevilleHouse