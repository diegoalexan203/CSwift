//
//  Result.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class Poke: Codable {
    let name: String
    let url: String

    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
