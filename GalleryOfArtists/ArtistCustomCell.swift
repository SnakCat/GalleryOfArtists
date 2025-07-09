//
//  ArtistCustomCell.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import SwiftUI

struct ArtistCustomCell: View {
    
    let artist: ArtistModel
    
    var body: some View {
        HStack {
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 96, height: 96)
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text(artist.name)
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                Text(artist.bio)
                    .font(.system(size: 16).bold())
                    .lineLimit(2)
                    .padding(.top, 8)
            }
            .padding(.leading, 16)
        }
    }
}

//#Preview {
//    ArtistCustomCell(artist: ArtistModel.init(id: 1, name: "Pablo Picasso", bit: "Pablo Ruiz y Picasso (25 October 1881 – 8 April 19...", image: "0", works: [WorksModel]()))
//}
