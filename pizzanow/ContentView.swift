//
//  ContentView.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders: OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            StatusBarView(showOrders: $showOrders)
            if showOrders {
                OrderView(orders: orders)
            }
            else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.cyan, Color("color_surf"), Color("color_sky")], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

#Preview {
    ContentView(menu: MenuModel().menu)
}
