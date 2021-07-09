//
//  PokemonBLFake.swift
//  CondorDiego8aTests
//
//  Created by Diego on 9/07/21.
//

import Foundation
import RxCocoa
import RxSwift
import XCTest

class PokemonBLFake: PokemonBL {
    
    override func getPokemon() throws -> Observable<PokemonResponse>  {
        
        let  poke1 = Poke(name: "Tigger", url: "www.tigger.com")
        let poke2 = Poke(name: "Chiquito", url: "www.chiquito.com")
        var pokemons = [Poke]()
        pokemons.append(poke2)
        pokemons.append(poke1)
        let response = PokemonResponse(count: 1, next: "", results:pokemons)
       
        return Observable<PokemonResponse>.from(response)
    }

    override func getDetailPokemon(idPokemon: String)throws -> Observable<PokemonDetailsResponse> {
        var detailResponse = PokemonDetailsResponse(abilities: nil, baseExperience: 1, forms: nil, gameIndices:nil, height: 5, heldItems: nil, id: 1, isDefault: true, locationAreaEncounters: "Medellin", moves: nil, name: "Gato", order: 5, pastTypes: nil, species: nil, sprites: nil, stats: nil, types: nil, weight: 5)
        
        return Observable<PokemonDetailsResponse>.from(detailResponse)
    }
}
