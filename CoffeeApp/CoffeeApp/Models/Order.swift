//
//  Order.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import Foundation

enum CoffeeSize: String , CaseIterable , Codable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
}

struct Order: Codable, Identifiable, Hashable {
    var id: Int?
    var name: String
    var coffeeName: String
    var total: Double
    var size: CoffeeSize
    
    static let example = Order(name: "Sample Name", coffeeName: "Coffee Latte", total: 14.99, size: .large)
}
