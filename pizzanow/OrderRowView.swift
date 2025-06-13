//
//  OrderRowView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(order.item.name)
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(order.quantity, format: .number)
                Text("@")
                Text(order.item.price, format: .currency(code: "SGD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "SGD"))
                    .fontWeight(.semibold)
            }
        }
        .padding(5)
        .background(.regularMaterial)
        .cornerRadius(10)
        .shadow(radius: 15)
    }
}

#Preview {
    OrderRowView(order: .constant(testOrderItem))
}
