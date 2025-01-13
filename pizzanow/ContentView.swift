//
//  ContentView.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6]
    var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
            if showOrders {
                OrderView(orders: orders)
            }
            else {
                MenuItemView()
                    .padding(5)
                    .background(Color("color_sky"), in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.cyan, Color("color_surf"), Color("color_sky")], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
//        .colorScheme(.dark)
//        .background(Color.black)
}
