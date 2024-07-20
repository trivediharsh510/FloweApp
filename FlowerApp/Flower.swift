//
//  Flower.swift
//  FlowerApp
//
//  Created by HARSH TRIVEDI on 07/07/24.
//

import Foundation

struct Flower: Identifiable, Codable {
    let id = UUID()
    let name: String
    let description: String
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case description
        case imageUrl
    }
}
