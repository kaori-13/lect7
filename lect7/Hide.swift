//
//  Hide.swift
//  lect7
//
//  Created by Fanny on 2025/11/7.
//

import SwiftUI

struct Hide: View {
    @State private var show = false

    var body: some View {
        VStack(spacing: 20) {
            Image(.kyogre)
                .resizable()
                .scaledToFit()
                .padding(20)
                .opacity(show ? 1 : 0)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 6)
            Text(
                "Kyogre"
            )
            .opacity(show ? 1 : 0)

            Button(show ? "A wild pokémon appeared!" : "Grass") {
                show.toggle()
            }
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.green)
        }
    }
}

#Preview {
    Hide()
}
