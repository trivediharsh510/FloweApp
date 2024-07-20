//
//  FlowerViewModel.swift
//  FlowerApp
//
//  Created by HARSH TRIVEDI on 07/07/24.
//

import Foundation
import Combine

class FlowerViewModel: ObservableObject {
    @Published var flowers: [Flower] = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchFlowers() {
        guard let url = URL(string: "https://mocki.io/v1/86dc0d4f-652d-4fc3-80d3-573d02697bb8") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Flower].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching flowers: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { flowers in
                self.flowers = flowers
            })
            .store(in: &self.cancellables)
    }
}
