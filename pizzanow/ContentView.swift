//
//  ContentView.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            OrderView()
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
//        .colorScheme(.dark)
//        .background(Color.black)
}


