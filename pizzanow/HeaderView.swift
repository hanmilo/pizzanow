//
//  HeaderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("pizzanow")
                .background()
        }
    }
}

#Preview {
    HeaderView()
}
