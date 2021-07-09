//
//  Stat.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Stat: Codable {
    let baseStat, effort: Int
    let stat: Species

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort, stat
    }

    init(baseStat: Int, effort: Int, stat: Species) {
        self.baseStat = baseStat
        self.effort = effort
        self.stat = stat
    }
}
