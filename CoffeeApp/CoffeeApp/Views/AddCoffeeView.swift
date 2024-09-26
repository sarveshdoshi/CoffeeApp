//
//  AddCoffeeView.swift
//  CoffeeApp
//
//  Created by Sarvesh Doshi on 03/09/24.
//

import SwiftUI

struct AddCoffeeErrors {
    var name: String = ""
    var coffeeName: String = ""
    var price: String = ""
}

struct AddCoffeeView: View {
    
    @State private var name: String = ""
    @State private var coffeeName: String = ""
    @State private var price: String = ""
    @State private var coffeeSize: CoffeeSize = .medium
    @State private var errors: AddCoffeeErrors = AddCoffeeErrors()
    
    var isValid: Bool {
        errors = AddCoffeeErrors()
        
        if name.isEmpty {
            errors.name = "Name is required"
        }
        
        if coffeeName.isEmpty {
            errors.coffeeName = "Coffee name is required"
        }
        
        if price.isEmpty {
            errors.price = "Price is required"
        } else if (!price.isNumeric) {
            errors.price = "Price needs to be a number"
        } else if price.isLessThan(1) {
            errors.price = "Price needs to be greater than 0"
        }
        
        return errors.name.isEmpty && errors.coffeeName.isEmpty && errors.price.isEmpty
    }
    
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
                .accessibilityIdentifier("name")
            Text(errors.name).visible(errors.name.isNotEmpty)
                .font(.caption)
                .foregroundStyle(.red)
            
            TextField("Coffee name", text: $coffeeName)
                .accessibilityIdentifier("coffeeName")
            Text(errors.coffeeName).visible(errors.coffeeName.isNotEmpty)
                .font(.caption)
                .foregroundStyle(.red)
            
            
            TextField("Price", text: $price)
                .accessibilityIdentifier("price")
            Text(errors.price).visible(errors.price.isNotEmpty)
                .font(.caption)
                .foregroundStyle(.red)
            
            
            Picker("Select Size", selection: $coffeeSize) {
                ForEach(CoffeeSize.allCases, id: \.rawValue) { size in
                    Text(size.rawValue)
                        .tag(size)
                }
            }
            .pickerStyle(.segmented)
            Button("Place Order") {
                if isValid {
                    
                }
            }
            .accessibilityIdentifier("placeOrderButton")
            .centerHorizontally()
        }
    }
}

#Preview {
    AddCoffeeView()
}
