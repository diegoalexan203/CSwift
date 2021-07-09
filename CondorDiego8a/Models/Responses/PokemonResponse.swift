//
//  PokemonResponse.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class PokemonResponse: Codable {
    let count: Int
    let next: String?
    var results: [Poke]?
    
    init(count: Int, next: String, results: [Poke]) {
        self.count = count
        self.next = next
        self.results = results
    }
}
