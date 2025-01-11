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
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("margherita")
                Text("description")
            }
        }
    }
}

#Preview {
    MenuRowView(item: 2)
}
