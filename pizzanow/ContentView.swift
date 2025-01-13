//
//  ContentView.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6]
    @State private var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
            }
            .foregroundStyle(.white)
            if showOrders {
                OrderView(orders: orders)
            }
            else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
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
