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
            } else {
                Image("surfboard_lg")
            }
            Text("margherita")
            Text("description")
        }
    }
}

#Preview {
    MenuItemView()
}
