//
//  MenuItemView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("margherita pizzanow")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                if let image = UIImage(named: "0x_lg") {
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fringilla, augue eu aliquam laoreet, nibh mauris pretium odio, in gravida augue diam id velit. Aenean ac commodo tortor. Aenean ac sagittis orci, vel dapibus lectus. In elementum diam vitae quam cursus, eget pellentesque tellus malesuada. Etiam risus risus, convallis sit amet neque nec, egestas egestas ex. Sed nec velit eleifend, molestie elit ac, convallis sapien. Curabitur est ante, convallis quis dui in, finibus accumsan diam. In hac habitasse platea dictumst. In tincidunt malesuada tempor. Suspendisse purus tellus, dictum et tellus quis, pretium dignissim ex. Duis ultricies diam quis tortor fringilla, eu congue felis pharetra.")
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
    MenuItemView()
}
