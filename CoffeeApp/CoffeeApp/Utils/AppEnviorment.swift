//
//  AppEnviorment.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import Foundation

enum AppEnviorment: String {
    case dev
    case test
    
    var baseURL: URL {
        switch self {
        case .dev:
            return URL(string: "https://island-bramble.glitch.me")!
        case .test:
            return URL(string: "https://island-bramble.glitch.me")!
        }
    }
    
}

enum Endpoints {
    
    case allOrders
    case placeOrder
    
    var path: String {
        switch self {
        case .allOrders:
            return "/test/orders"
        case .placeOrder:
            return "/test/new-order"
        }
        
    }
}

struct Configuration {
    lazy var enviornment: AppEnviorment = {
        guard let env = ProcessInfo.processInfo.environment["ENV"] else {
            return AppEnviorment.dev
        }
        if env == "TEST" {
            return AppEnviorment.test
        }
        
        return AppEnviorment.dev
    }()
}
