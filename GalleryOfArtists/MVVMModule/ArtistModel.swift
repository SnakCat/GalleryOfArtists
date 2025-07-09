//
//  ArtistModel.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

struct ArtistListModel: Codable {
    let artists: [ArtistModel]
}

struct ArtistModel: Codable {
    let name: String
    let bio: String
    let image: String
    let works: [WorksModel]
}

struct WorksModel: Codable {
    let title: String
    let image: String
    let info: String
}
