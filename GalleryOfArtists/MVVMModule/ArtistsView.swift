//
//  ContentView.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 08.07.2025.
//

import SwiftUI

struct ArtistsView: View {
    @StateObject private var viewModel = ArtistViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.artists, id: \.name) { artist in
                    NavigationLink {
                        ArtistDeteilView(artist: artist)
                    } label: {
                        ArtistCustomCell(artist: artist)
                    }
                }
                .tint(.black)
            }
            .overlay {
                if viewModel.isLoading {
                    ProgressView()
                }
            }
            .navigationTitle("Artists")
            .task {
                await viewModel.fetchAtrists()
            }
        }
    }
}

#Preview {
    ArtistsView()
}
