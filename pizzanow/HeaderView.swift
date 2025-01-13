//
//  HeaderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("pizzanow")
//                .background()
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundColor(Color("color_sky"))
        }
    }
}

#Preview {
    HeaderView()
}
