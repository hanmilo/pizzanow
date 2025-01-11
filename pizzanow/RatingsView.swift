//
//  RatingsView.swift
//  pizzanow
//
//  Created by Dean on 10/1/25.
//

import SwiftUI

struct RatingsView: View {
    var rating:Int
    var body: some View {
        HStack {
            ForEach(0..<rating, id: \.self) { count in
                Image(systemName: "fork.knife.circle.fill")
            }
            ForEach(rating..<6, id: \.self) { count in
                Image(systemName: "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 2)
}
