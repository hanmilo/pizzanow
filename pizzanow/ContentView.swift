//
//  ContentView.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @State private var orders: [OrderItem] = testOrders
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) orders")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                        .font(.title2)
                }
            }
            .foregroundStyle(.white)
            .font(.title2)
            if showOrders {
                OrderView(orders: $orders)
            }
            else {
                MenuItemView(item: $selectedItem)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.cyan, Color("color_surf"), Color("color_sky")], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView(menu: MenuModel().menu)
}
