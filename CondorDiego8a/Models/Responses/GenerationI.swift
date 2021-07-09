//
//  GenerationI.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationI: Codable {
    let redBlue, yellow: RedBlue

    enum CodingKeys: String, CodingKey {
        case redBlue = "red-blue"
        case yellow
    }

    init(redBlue: RedBlue, yellow: RedBlue) {
        self.redBlue = redBlue
        self.yellow = yellow
    }
}
