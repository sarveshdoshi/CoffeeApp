//
//  Webservice.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case badRequest
    case badResponse
}

class Webservice {
    
    func getOrders() async throws -> [Order] {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/test/orders") else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.badRequest
        }
        
        guard let orders = try? JSONDecoder().decode([Order].self, from: data) else {
            throw NetworkError.badResponse
        }
        
        return orders
    }
    
}
