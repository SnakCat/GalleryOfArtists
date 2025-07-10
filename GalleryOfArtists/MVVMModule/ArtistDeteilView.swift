//
//  ArtistDeteilView.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 10.07.2025.
//

import SwiftUI

struct ArtistDeteilView: View {
    let artist: ArtistModel
    
    var body: some View {
        ScrollView {
            VStack {
                
                ZStack {
                    Image(artist.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    VStack(alignment: .leading) {
                        Text(artist.name)
                            .font(.system(size: 16)).bold()
                            .foregroundStyle(.white)
                        Text("Autor")
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    .padding(.leading, 26)
                    .padding(.bottom, 24)
                }
                
                VStack(alignment: .leading) {
                    Text("Bioraphy")
                        .font(.system(size: 16)).bold()
                        .padding(.top, 24)
                    Text(artist.bio)
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                        .padding(.top, 8)
                }
                .padding(.horizontal, 20)
                
                Text("Works")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 18)).bold()
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                
                ForEach(artist.works, id: \.title) { work in
                    VStack(alignment: .leading) {
                        Image(work.image)
                            .resizable()
                            .frame(width: 330, height: 144)
                            .clipShape(.rect(cornerRadius: 10))
                        Text(work.title)
                            .font(.system(size: 16))
                            .padding(.top, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    ArtistDeteilView(artist: ArtistModel(name: "wer ertt ", bio: "sdsadfsaf gsfadsfk nsbf ak dak ad af afadaf asfdsadfsaf gsfadsfk nsbf ak dak ad af afadaf asfdsadfsaf gsfadsfk nsbf ak dak ad af afadaf asfdsadfsaf gsfadsfk nsbf ak dak ad af afadaf asf", image: "0", works: [WorksModel(title: "sdfsf sdfsf s", image: "1", info: "asdfsfasf fsfassfa ")]))
}
