//
//  OfficialArtwork.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class OfficialArtwork: Codable {
    let frontDefault: String

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }

    init(frontDefault: String) {
        self.frontDefault = frontDefault
    }
}
