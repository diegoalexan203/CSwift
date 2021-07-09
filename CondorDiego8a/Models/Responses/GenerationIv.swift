//
//  GenerationIv.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationIv: Codable {
    let diamondPearl, heartgoldSoulsilver, platinum: Sprites

    enum CodingKeys: String, CodingKey {
        case diamondPearl = "diamond-pearl"
        case heartgoldSoulsilver = "heartgold-soulsilver"
        case platinum
    }

    init(diamondPearl: Sprites, heartgoldSoulsilver: Sprites, platinum: Sprites) {
        self.diamondPearl = diamondPearl
        self.heartgoldSoulsilver = heartgoldSoulsilver
        self.platinum = platinum
    }
}
