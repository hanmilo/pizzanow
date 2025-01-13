//
//  MenuRowView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct MenuRowView: View {
    var item:Int
    var body: some View {
        HStack(alignment: .top, spacing:15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("margherita")
                RatingsView(rating: 4)
            }
            Spacer()
        }
    }
}

#Preview {
    MenuRowView(item: 2)
}
