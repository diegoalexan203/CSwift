//
//  File.swift
//  CondorDiego8aTests
//
//  Created by Diego on 9/07/21.
//

import Foundation
import RxCocoa
import RxSwift
import RxTest
import XCTest

class DetailsPokemonTest: XCTestCase {
    var scheduler: TestScheduler!
    var disposebag: DisposeBag!

    override func setUp() {
        scheduler = TestScheduler(initialClock: 0)
        disposebag = DisposeBag()
    }

    func testGetDetailsPokemon() {
        let fake = PokemonBLFake()
        let viewModel = DetailsPokemonViewModel(pokeBL: fake)
        

        let pokes = scheduler.createObserver(PokemonDetailsResponse?.self)
        viewModel.output.pokemonDetails.asDriver().drive(pokes).disposed(by: disposebag)


        scheduler.start()

        let usersVM = viewModel.output.pokemonDetails.value
        XCTAssertNotNil(usersVM)
    }
    
    
}
