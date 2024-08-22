//
//  CoffeeModel.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import Foundation

@MainActor
class CoffeeModel: ObservableObject {
    
    let webservice: Webservice
    
    @Published private(set) var orders: [Order] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateOrders() async throws {
        orders = try await webservice.getOrders()
    }
    
}
