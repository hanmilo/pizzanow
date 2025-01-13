//
//  OrderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    var body: some View {
        VStack {
            Label {
                Text(59.99, format: .currency(code: "SGD"))
            }
            icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            HStack {
                Text("order pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing], 7)
                }
            }
        }
        .padding()
        .background(Color("color_surf"))
    }
}

#Preview {
    OrderView(orders: [1, 2, 3, 4, 6])
}
