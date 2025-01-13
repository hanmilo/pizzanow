//
//  OrderRowView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct OrderRowView: View {
    var order:Int
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("your order item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text("@")
                Text(19.90, format: .currency(code: "SGD"))
                Spacer()
                Text(19.90, format: .currency(code: "SGD"))
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
    OrderRowView(order: 1)
}
