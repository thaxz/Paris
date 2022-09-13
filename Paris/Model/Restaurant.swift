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
    let priceAverage: String
    let distance: String
    let description: String
    let phoneNumber: String
    
    let features: [String]
    let nearbyRestaurants: [Restaurant]
    let nearbyTours: [Tour]
    
    
}
