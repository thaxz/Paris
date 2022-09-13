//
//  Tour.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

import Foundation


struct Tour: Codable {
    
    let name: String
    let rating: String
    let distance: String
    let description: String
    let phoneNumber: String?
    
    let features: [String]
    let nearbyRestaurants: [Restaurant]
    let nearbyTours: [Tour]
    
    
    
}