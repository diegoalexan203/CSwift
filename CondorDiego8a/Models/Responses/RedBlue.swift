//
//  RedBlue.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class RedBlue: Codable {
    let backDefault, backGray, frontDefault, frontGray: String

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backGray = "back_gray"
        case frontDefault = "front_default"
        case frontGray = "front_gray"
    }

    init(backDefault: String, backGray: String, frontDefault: String, frontGray: String) {
        self.backDefault = backDefault
        self.backGray = backGray
        self.frontDefault = frontDefault
        self.frontGray = frontGray
    }
}
