//
//  Restaurant.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

import Foundation

// Objeto restaurante

struct Restaurant: Codable {
    
    let name: String
    let rating: String
    let priceRange: String
    let distance: String?
    let description: String
    let phoneNumber: String
    let address: String
    
    let mainImage: String
    let dishImage: String
    
    let features: [String]
    let nearbyRestaurants: [String]
    let nearbyTours: [String]
    
    
}
