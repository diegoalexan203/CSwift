//
//  GameIndex.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GameIndex: Codable {
    let gameIndex: Int
    let version: Species

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }

    init(gameIndex: Int, version: Species) {
        self.gameIndex = gameIndex
        self.version = version
    }
}
