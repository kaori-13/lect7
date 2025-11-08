//
//  ContentView.swift
//  lect7
//
//  Created by Fanny on 2025/11/7.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var selectedPokemon: Pokemon?
    
    let Pokemons = [
        Pokemon(name: "Groudon", imageName: "Groudon", description: "Can not fly"),
        Pokemon(name: "Kyogre", imageName: "Kyogre", description: "Poisoned whale"),
        Pokemon(name: "Rayquaza", imageName: "Rayquaza", description: "Little green snake Rahhh"),
        Pokemon(name: "Kyurem", imageName: "Kyurem", description: "Nuclear reactor"),
        Pokemon(name: "Zygarde", imageName: "Zygarde", description: "Cute Puppy"),
        Pokemon(name: "Miraidon", imageName: "Miraidon", description: "Motorcycle"),
        Pokemon(name: "Ho-Oh", imageName: "Ho-Oh", description: "Cameraman never dies"),
        Pokemon(name: "Lugia", imageName: "Lugia", description: "Big fat goose"),
        Pokemon(name: "Terapagos", imageName: "Terapagos", description: "Diamond turtle"),
    ]
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                VStack {
                    Button(show ? "A wild pokémon appeared!" : "Oh?") {
                        //                    按鈕變
                        show.toggle()
                        //                    隨機選
                        selectedPokemon = Pokemons.randomElement()
                    }
                    .buttonStyle(.borderless)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.black)
                    if show, let chosenPokemon = selectedPokemon {
                        Image(chosenPokemon.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .opacity(show ? 1 : 0)
                            .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 6)
                        Text(chosenPokemon.name)
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                        Text(chosenPokemon.description)
                            .font(.title)
                            .foregroundStyle(.white)
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(.white)
                                    .opacity(0.5)
                            )
                        
                    }
                    Spacer()
                }
                PokeballshuffleView()
            }
        }
    }
}

#Preview {
    ContentView()
}
