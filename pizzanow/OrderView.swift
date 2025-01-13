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
        ZStack(alignment: .top) {
            ScrollView {
                ForEach(orders, id: \.self) { order in
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
        .background(Color("color_surf"))
        .cornerRadius(10)
    }
}

#Preview {
    OrderView(orders: [1, 2, 3, 4, 6])
}
