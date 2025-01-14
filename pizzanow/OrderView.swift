//
//  OrderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct OrderView: View {
    @Binding var orders: [OrderItem]
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach($orders) { order in
//                        Text(order.item.name)
                        OrderRowView(order: order)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                }
                .padding(.top, 70)
                HStack {
                    Text("order pizza")
                        .font(.title)
                    Spacer()
                    Label {
                        Text(59.99, format: .currency(code: "SGD"))
                    }
                    icon: {
                        Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            .cornerRadius(10)
            Button("Delete Order") {
                if !orders.isEmpty {
                    orders.removeLast()
                }
            }
            .padding(5)
            .background(.regularMaterial, in: Capsule())
            .padding(7)
        }
        .background(Color("color_surf"))
    }
}

#Preview {
    OrderView(orders: .constant(testOrders))
}
