//
//  Crystal.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Crystal: Codable {
    let backDefault, backShiny, frontDefault, frontShiny: String

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backShiny = "back_shiny"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }

    init(backDefault: String, backShiny: String, frontDefault: String, frontShiny: String) {
        self.backDefault = backDefault
        self.backShiny = backShiny
        self.frontDefault = frontDefault
        self.frontShiny = frontShiny
    }
}
