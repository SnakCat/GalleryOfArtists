//
//  NetworkService.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchData() async throws -> ArtistListModel
}

final class NetworkService: NetworkServiceProtocol {
    private let baseURL = "https://cdn.accelonline.io/OUR6G_IgJkCvBg5qurB2Ag/files/YPHn3cnKEk2NutI6fHK04Q.json"
    
    func fetchData() async throws -> ArtistListModel {
        guard let url = URL(string: baseURL) else {
            throw URLError(.badURL)
        }
        let (data, responce) = try await URLSession.shared.data(from: url)
        if let httpResponce = responce as? HTTPURLResponse, httpResponce.statusCode != 200 {
            fatalError("status code \(httpResponce.statusCode)")
        }
        let artists = try JSONDecoder().decode(ArtistListModel.self, from: data)
        return artists
    }
}
