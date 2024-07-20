//
//  FlowerListView.swift
//  FlowerApp
//
//  Created by HARSH TRIVEDI on 07/07/24.
//

import SwiftUI

struct FlowerListView: View {
    @StateObject var viewModel = FlowerViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.flowers) { flower in
                NavigationLink(destination: FlowerDetailView(flower: flower)) {
                    HStack {
                        AsyncImage(url: URL(string: flower.imageUrl)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(flower.name)
                                .font(.headline)
                            Text(flower.description)
                                .font(.subheadline)
                                .lineLimit(2)
                        }
                    }
                }
            }
            .navigationTitle("Flowers")
            .onAppear {
                viewModel.fetchFlowers()
            }
        }
    }
}

