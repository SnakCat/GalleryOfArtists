//
//  WorksdetailView.swift
//  GalleryOfArtists
//
//  Created by DimaTru on 12.07.2025.
//

import SwiftUI

struct WorksDetailView: View {
    let model: WorksModel
    
    var body: some View {
        ScrollView {
            VStack {
                Image(model.image)
                    .resizable()
                    .frame(height: 287)
                    
                VStack {
                    Text(model.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 20)).bold()
                    Text(model.info)
                        .padding(.top, 16)
                }
                .padding(.horizontal, 20)
                .padding(.top, 24)
            }
        }
    }
}

#Preview {
    WorksDetailView(model: WorksModel(title: "name name", image: "1", info: "sfsaf ffsfafa fafadfsfa dafa fd a fa dafsdkhfjsv sf as"))
}
