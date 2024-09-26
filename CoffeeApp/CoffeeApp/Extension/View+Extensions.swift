//
//  View+Extensions.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 03/09/24.
//

import Foundation
import SwiftUI

extension View {
    
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    @ViewBuilder
    func visible(_ value: Bool) -> some View {
        Group {
            if value {
                self
            } else {
                EmptyView()
            }
        }
    }
    
}
