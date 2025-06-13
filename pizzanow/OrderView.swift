//
//  OrderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach($orders.orderItems) { order in
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
                    
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            .cornerRadius(10)
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
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
    OrderView(orders: OrderModel())
}
