//
//  GenerationVi.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationVi: Codable {
    let frontDefault: String
    let frontFemale: JSONNull?
    let frontShiny: String
    let frontShinyFemale: JSONNull?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }

    init(frontDefault: String, frontFemale: JSONNull?, frontShiny: String, frontShinyFemale: JSONNull?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
        self.frontShiny = frontShiny
        self.frontShinyFemale = frontShinyFemale
    }
}
