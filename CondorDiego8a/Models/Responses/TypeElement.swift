//
//  TypeElement.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class TypeElement: Codable {
    let slot: Int
    let type: Species

    init(slot: Int, type: Species) {
        self.slot = slot
        self.type = type
    }
}
