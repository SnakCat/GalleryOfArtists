//
//  ArtistViewModel.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

@MainActor
final class ArtistViewModel: ObservableObject {
    @Published var artists: [ArtistModel] = []
    @Published var errorMessage: String?
    @Published var isLoading = false
    private let networkService = NetworkService()
    
    func fetchAtrists() async {
        isLoading = true
        do {
            let fetchArtists = try await networkService.fetchData()
            self.artists = fetchArtists.artists
        } catch {
            self.errorMessage = "Error loading \(error.localizedDescription)"

        }
        isLoading = false
    }
}
