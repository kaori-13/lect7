//
//  Pokeballshuffle.swift
//  lect7
//
//  Created by Fanny on 2025/11/8.
//

import SwiftUI

struct PokeballshuffleView: View {
    @State private var show = false
    @State private var selectedPokeball: Pokeball?

    let Pokeballs = [
        Pokeball(description: "Beast Ball", imageName: "BeastBall"),
        Pokeball(description: "Ultra Ball", imageName: "UltraBall"),
        Pokeball(description: "Quick Ball", imageName: "QuickBall"),
        Pokeball(description: "Premier Ball", imageName: "PremierBall"),
    ]

    var body: some View {
        HStack {
            VStack {
                Button(show ? "Choose a ball!" : "Now throw!") {
                    show.toggle()
                    selectedPokeball = Pokeballs.randomElement()
                }
                if let pokeball = selectedPokeball {
                    Image(pokeball.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                        .buttonStyle(.borderedProminent)
                    Text(pokeball.description)
                        .font(.largeTitle)
                } else {
                    Text("")
                }
            }
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    PokeballshuffleView()
}
