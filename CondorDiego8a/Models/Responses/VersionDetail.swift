//
//  VersionDetail.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class VersionDetail: Codable {
    let rarity: Int
    let version: Species

    init(rarity: Int, version: Species) {
        self.rarity = rarity
        self.version = version
    }
}
