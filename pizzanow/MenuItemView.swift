//
//  MenuItemView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
                    .cornerRadius(10)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("color_surf"))
                    .padding(.leading)
                    .background(.linearGradient(colors: [Color("color_surf"), Color("color_sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fringilla, augue eu aliquam laoreet, nibh mauris pretium odio, in gravida augue diam id velit. Aenean ac commodo tortor. Aenean ac sagittis orci, vel dapibus lectus. In elementum diam vitae quam cursus, eget pellentesque tellus malesuada. Etiam risus risus, convallis sit amet neque nec, egestas egestas ex. Sed nec velit eleifend, molestie elit ac, convallis sapien. Curabitur est ante, convallis quis dui in, finibus accumsan diam. In hac habitasse platea dictumst. In tincidunt malesuada tempor. Suspendisse purus tellus, dictum et tellus quis, pretium dignissim ex. Duis ultricies diam quis tortor fringilla, eu congue felis pharetra.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
