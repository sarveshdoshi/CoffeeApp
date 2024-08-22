//
//  NumberFormatter + Extension.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 22/08/24.
//

import Foundation

extension NumberFormatter {
    
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
