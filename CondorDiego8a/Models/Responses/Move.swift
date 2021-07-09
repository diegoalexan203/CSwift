//
//  Move.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Move: Codable {
    let move: Species
    let versionGroupDetails: [VersionGroupDetail]

    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails = "version_group_details"
    }

    init(move: Species, versionGroupDetails: [VersionGroupDetail]) {
        self.move = move
        self.versionGroupDetails = versionGroupDetails
    }
}
