//
//  ContentView.swift
//  TestFirebase
//
//  Created by Ricky Suprayudi on 03/05/24.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image
}

let roles = ["Team1", "Team2", "Team3", "Team5"]

struct ContentView: View {
    
    
    let items: [Item] = roles.map { Item(image: Image($0)) }
    
    var body: some View {
        ACarousel(items,
                  spacing: 10,
                  headspace: 10,
                  sidesScaling: 0.7,
                  isWrap: true,
                  autoScroll: .active(2)) { item in
            item.image
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .cornerRadius(30)
        }
        .frame(height: 300)
    }
}
#Preview {
    ContentView()
}
