//
//  OrderItemView.swift
//  pizzanow
//
//  Created by Dean Wong on 13/6/25.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient: Bool = false
    @State private var pizzaCrust: PizzaCrust = .calzone
    var body: some View {
        VStack {
            Toggle(isOn: $doubleIngredient) {
                Text ("Double Ingredients" + (doubleIngredient ? " Yes": " No"))
                Stepper(value: $quantity, in: 1...10) {
                    Text("\(quantity) " + (quantity == 1 ? "pizza": "pizzas"))
                }
                Picker(selection: $pizzaCrust) {
                    ForEach(PizzaCrust.allCases, id: \.self) { crust in
                        Text(crust.rawValue).tag(crust)
                    }
                } label: {
                        Text("Pizza Crust")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
