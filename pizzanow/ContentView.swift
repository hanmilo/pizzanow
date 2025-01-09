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
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("pizzanow")
                    .background()
            }
            Text("order pizza")
                .font(.title)
            HStack(alignment:.firstTextBaseline) {
                Text("your order item")
                Spacer()
                Text("$0.00")
            }
            HStack(alignment:.top, spacing:15) {
                Image("0_sm")
                Text("margherita")
            }
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
