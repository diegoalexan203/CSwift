//
//  PokemonRepository.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Alamofire
import Foundation
import Moya
import RxSwift

class PokemonRepository: PokemonRepositoryBehavior {
    let api = MoyaProvider<PokeApi>(session: Alamofire.Session())

    func getPokemon(limit: Int) throws -> Observable<PokemonResponse> {
        api.rx.request(PokeApi.getPokemon(limit: limit)).asObservable().flatMap({ response -> Observable<PokemonResponse> in
            if response.statusCode == 200 {
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(PokemonResponse.self, from: response.data)
                    return Observable.just(result)
                }
            } else {
                let error = NSError(domain: "Error PokeApi", code: response.statusCode, userInfo: ["Error": response.statusCode.description])
                return Observable.error(error)
            }
        })
    }

    func getDetailPokemon(idPokemon: String) throws -> Observable<PokemonDetailsResponse> {
        api.rx.request(PokeApi.getDetailPokemon(idPokemon: idPokemon)).asObservable().flatMap({ response -> Observable<PokemonDetailsResponse> in
            if response.statusCode == 200 {
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(PokemonDetailsResponse.self, from: response.data)
                    return Observable.just(result)
                }
            } else {
                let error = NSError(domain: "Error PokeApi", code: response.statusCode, userInfo: ["Error": response.statusCode.description])
                return Observable.error(error)
            }
        })
    }
}
