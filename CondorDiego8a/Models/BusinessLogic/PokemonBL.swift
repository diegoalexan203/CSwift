//
//  PokemonBL.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import RxSwift

class PokemonBL: PokemonBLBehavior{
    
    var pokemonRepository: PokemonRepositoryBehavior
    
    init() {
        pokemonRepository = PokemonRepository()
    }
    
    init(repository:PokemonRepositoryBehavior) {
        pokemonRepository = repository
    }
    
    func getPokemon() throws -> Observable<PokemonResponse> {
        return try pokemonRepository.getPokemon(limit: 151).asObservable().flatMap({response -> Observable<PokemonResponse> in Observable.just(response)})
    }
    
    func getDetailPokemon(idPokemon: String) throws -> Observable<PokemonDetailsResponse> {
        return try pokemonRepository.getDetailPokemon(idPokemon: idPokemon).asObservable().flatMap({response -> Observable<PokemonDetailsResponse> in Observable.just(response)})
    }
}
