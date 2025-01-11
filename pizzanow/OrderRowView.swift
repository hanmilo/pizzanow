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
        HStack(alignment: .firstTextBaseline) {
            Text("your order item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "SGD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
