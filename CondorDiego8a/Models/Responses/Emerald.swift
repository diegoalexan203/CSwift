//
//  Emerald.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Emerald: Codable {
    let frontDefault, frontShiny: String

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }

    init(frontDefault: String, frontShiny: String) {
        self.frontDefault = frontDefault
        self.frontShiny = frontShiny
    }
}
