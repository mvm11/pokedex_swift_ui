//
//  PokemonCell.swift
//  pokedex
//
//  Created by Mateo Valencia on 3/02/23.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                setPokemonName()
                HStack{
                    setPokemonType()
                    setPokemonImage()
                }
            }
        }.background(Color(viewModel.backGroundColor(forType: pokemon.type)))
            .cornerRadius(12)
            .shadow(color: Color(viewModel.backGroundColor(forType: pokemon.type)), radius: 6, x: 0.0, y: 0.0)
    }
    
    fileprivate func setPokemonName() -> some View {
        return Text(pokemon.name.capitalized)
            .font(.headline)
            .foregroundColor(.white)
            .padding(.top, 8)
            .padding(.leading)
    }
    
    fileprivate func setPokemonType() -> some View {
        return Text(pokemon.type)
            .font(.subheadline)
            .bold()
            .foregroundColor(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)))
            .frame(width: 100, height: 24)
    }
    
    fileprivate func setPokemonImage() -> some View {
        return KFImage(URL(string: pokemon.imageUrl))
            .resizable()
            .scaledToFit()
            .frame(width: 68, height: 68)
            .padding([.bottom, .trailing], 4)
    }
}
