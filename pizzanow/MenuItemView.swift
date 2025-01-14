//
//  MenuItemView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    @Binding var item: MenuItem
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("color_surf"), Color("color_sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .colorSurf, radius: 5, x: 8, y: 8)
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem = true
            } label: {
                Spacer()
                Text(12.99, format: .currency(code: "SGD"))
                    .bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                    .font(.title2)
                Spacer()
            }
            .padding(.horizontal)
            .foregroundStyle(.white)
            .background(.orange, in: Capsule())
            .padding(5)
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem))
}
