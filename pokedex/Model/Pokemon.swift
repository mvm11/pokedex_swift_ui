//
//  Pokemon.swift
//  pokedex
//
//  Created by Mateo Valencia on 3/02/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}


let MOCK_POKEMON: [Pokemon] = [

    .init(id: 1, name: "Bulbasaur", imageUrl: "1", type: "Plant"),
    .init(id: 2, name: "Ivysaur", imageUrl: "1", type: "Plant"),
    .init(id: 3, name: "Venusaur", imageUrl: "1", type: "Plant"),
]
