//
//  Other.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Other: Codable {
    let dreamWorld: DreamWorld
    let officialArtwork: OfficialArtwork

    enum CodingKeys: String, CodingKey {
        case dreamWorld = "dream_world"
        case officialArtwork = "official-artwork"
    }

    init(dreamWorld: DreamWorld, officialArtwork: OfficialArtwork) {
        self.dreamWorld = dreamWorld
        self.officialArtwork = officialArtwork
    }
}
