//
//  MenuGridView.swift
//  pizzanow
//
//  Created by Dean Wong on 18/6/25.
//

import SwiftUI

struct MenuGridView: View {
    var menu : [MenuItem]
    @State var selectedItem: MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(/*spacing: 39*/), count: 3)
    var body: some View {
        VStack {
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        MenuItemTileView(menuItem: item)
                        //                    Button(action: {
                        //                        self.selectedItem = item
                        //                    }) {
                        //                        Image(item.imageName)
                        //                            .resizable()
                        //                            .aspectRatio(contentMode: .init(rawValue: 1))
                        //                            .frame(width: 100, height: 100
                        //                    }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu)
}
