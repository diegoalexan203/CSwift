//
//  DreamWorld.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class DreamWorld: Codable {
    let frontDefault: String
    let frontFemale: JSONNull?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
    }

    init(frontDefault: String, frontFemale: JSONNull?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
    }
}
