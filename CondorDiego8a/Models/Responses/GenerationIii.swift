//
//  GenerationIii.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationIii: Codable {
    let emerald: Emerald
    let fireredLeafgreen, rubySapphire: Crystal

    enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen = "firered-leafgreen"
        case rubySapphire = "ruby-sapphire"
    }

    init(emerald: Emerald, fireredLeafgreen: Crystal, rubySapphire: Crystal) {
        self.emerald = emerald
        self.fireredLeafgreen = fireredLeafgreen
        self.rubySapphire = rubySapphire
    }
}
