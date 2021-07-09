//
//  PokemonRepositoryBehavior.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import RxSwift

protocol PokemonRepositoryBehavior {
    func getPokemon(limit: Int) throws -> Observable<PokemonResponse>
    
    func getDetailPokemon(idPokemon: String) throws -> Observable<PokemonDetailsResponse>
}
