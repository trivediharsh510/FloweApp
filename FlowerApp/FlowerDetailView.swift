//
//  FlowerDetailView.swift
//  FlowerApp
//
//  Created by HARSH TRIVEDI on 07/07/24.
//

import SwiftUI

struct FlowerDetailView: View {
    var flower: Flower
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: flower.imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text(flower.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(flower.description)
                    .font(.body)
                    .padding(.top, 5)
            }
            .padding()
        }
        .navigationTitle(flower.name)
    }
}
