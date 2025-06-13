//
//  HeaderView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular != .compact) {
                ZStack(alignment: .bottomTrailing) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    Text("pizzanow")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            } else {
                HStack(alignment: .bottom) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("pizzanow")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("color_surf"))
                        .fontWeight(.heavy)
                }
            }
            
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
