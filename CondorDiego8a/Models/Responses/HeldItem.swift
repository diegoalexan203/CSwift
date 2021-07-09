//
//  HeldItem.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class HeldItem: Codable {
    let item: Species
    let versionDetails: [VersionDetail]

    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails = "version_details"
    }

    init(item: Species, versionDetails: [VersionDetail]) {
        self.item = item
        self.versionDetails = versionDetails
    }
}
