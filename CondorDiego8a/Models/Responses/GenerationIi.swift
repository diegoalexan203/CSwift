//
//  GenerationIi.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationIi: Codable {
    let crystal, gold, silver: Crystal

    init(crystal: Crystal, gold: Crystal, silver: Crystal) {
        self.crystal = crystal
        self.gold = gold
        self.silver = silver
    }
}
