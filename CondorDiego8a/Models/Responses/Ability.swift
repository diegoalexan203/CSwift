//
//  Ability.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Ability: Codable {
    let ability: Species
    let isHidden: Bool
    let slot: Int

    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }

    init(ability: Species, isHidden: Bool, slot: Int) {
        self.ability = ability
        self.isHidden = isHidden
        self.slot = slot
    }
}
