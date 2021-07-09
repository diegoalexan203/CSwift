//
//  DetailsPokemonViewModel.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import Moya
import RxCocoa
import RxSwift

class DetailsPokemonViewModel: ViewModelProtocol {
    let disposeBag = DisposeBag()
    var pokemonBl: PokemonBLBehavior

    struct Input {
       var idPokemon = BehaviorRelay<String?>(value: "")
    }

    struct Output {
        var pokemonDetails = BehaviorRelay<PokemonDetailsResponse?>(value: nil)
    }

    let input: Input
    let output: Output

    init() {
        input = Input()
        output = Output()
        pokemonBl = PokemonBL(repository: PokemonRepository())
        getIdPokemon()
    }
    
    init(pokeBL : PokemonBLBehavior) {
        input = Input()
        output = Output()
        pokemonBl = pokeBL
        getIdPokemon()
    }
    
    func getIdPokemon(){
        self.input.idPokemon.subscribe( onNext: { id in
            if id != nil {
                self.getDetailPokemon(idPokemon: id!)
            }
        }).disposed(by: disposeBag)
    }
    
    func getDetailPokemon(idPokemon: String) {
        do {
            try pokemonBl.getDetailPokemon(idPokemon: idPokemon).asObservable().retry(1).subscribe(onNext: { response in
                self.output.pokemonDetails.accept(response)
            }).disposed(by: disposeBag)
        } catch {
            print("Couldn't create the audio player for file \(error)")
        }
    }
}
