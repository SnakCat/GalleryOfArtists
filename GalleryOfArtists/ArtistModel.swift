//
//  ArtistModel.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import Foundation

struct ArtistModel: Identifiable, Codable {
    var id: Int
    let name: String
    let bit: String
    let image: String
    let works: [WorksModel]
}

struct WorksModel: Identifiable, Codable {
    let id: Int
    let title: String
    let image: String
    let info: String
}
