//
//  PokemonHomeTest.swift
//  CondorDiego8aTests
//
//  Created by Diego on 9/07/21.
//
import Foundation
import RxCocoa
import RxSwift
import RxTest
import XCTest

class PokemonHomeTest: XCTestCase {
    var scheduler: TestScheduler!
    var disposebag: DisposeBag!

    override func setUp() {
        scheduler = TestScheduler(initialClock: 0)
        disposebag = DisposeBag()
    }

    func testGetPokemons() {
        let fake = PokemonBLFake()
        let viewModel = PokemonHomeViewModel(pokeBL: fake)
        

        let pokes = scheduler.createObserver(PokemonResponse?.self)
        viewModel.output.pokemons.asDriver().drive(pokes).disposed(by: disposebag)


        scheduler.start()

        let usersVM = viewModel.output.pokemons.value
        XCTAssertNotNil(usersVM)
    }
    
    
}
