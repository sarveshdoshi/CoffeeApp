//
//  String + Extensions.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 26/09/24.
//

import Foundation

extension String {
    
    var isNumeric: Bool {
        Double(self) != nil
    }
    
    func isLessThan(_ number: Double) -> Bool {
        if !self.isNumeric { return false }
        
        guard let value = Double(self) else { return false }
        
        return value < number
    }
    
    var isNotEmpty: Bool {
        !self.isEmpty
    }
}
