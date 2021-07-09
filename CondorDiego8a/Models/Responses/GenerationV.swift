//
//  GenerationV.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationV: Codable {
    let blackWhite: Sprites

    enum CodingKeys: String, CodingKey {
        case blackWhite = "black-white"
    }

    init(blackWhite: Sprites) {
        self.blackWhite = blackWhite
    }
}
