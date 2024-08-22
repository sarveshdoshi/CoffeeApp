//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import SwiftUI

@main
struct CoffeeAppApp: App {
    
    @StateObject private var model: CoffeeModel
    
    init() {
        let webservice = Webservice()
        _model = StateObject(wrappedValue: CoffeeModel(webservice: webservice))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
