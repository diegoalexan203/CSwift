//
//  PokemonHomeViewModel.swift
//  CondorDiego8a
//
//  Created by Diego on 7/07/21.
//

import Foundation
import Moya
import RxCocoa
import RxSwift

class PokemonHomeViewModel: ViewModelProtocol {
    let disposeBag = DisposeBag()
    var pokemonBl: PokemonBLBehavior

    struct Input {
        
    }

    struct Output {
        var pokemons = BehaviorRelay<PokemonResponse?>(value: nil)
    }

    let input: Input
    let output: Output

    init() {
        input = Input()
        output = Output()
        pokemonBl = PokemonBL(repository: PokemonRepository())
        getPokemon()
    }
    init(pokeBL : PokemonBLBehavior) {
        input = Input()
        output = Output()
        pokemonBl = pokeBL
        getPokemon()
    }

    func getPokemon() {
        do {
            try pokemonBl.getPokemon().asObservable().retry(1).subscribe(onNext: { response in
                self.output.pokemons.accept(response)
            }).disposed(by: disposeBag)
        } catch {
            print("Couldn't create the audio player for file \(error)")
        }
    }
}
