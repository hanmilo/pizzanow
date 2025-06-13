//
//  pizzanowApp.swift
//  pizzanow
//
//  Created by Dean on 9/1/25.
//

import SwiftUI

@main
struct pizzanowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
