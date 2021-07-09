//
//  GenerationVii.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class GenerationVii: Codable {
    let icons: DreamWorld
    let ultraSunUltraMoon: GenerationVi

    enum CodingKeys: String, CodingKey {
        case icons
        case ultraSunUltraMoon = "ultra-sun-ultra-moon"
    }

    init(icons: DreamWorld, ultraSunUltraMoon: GenerationVi) {
        self.icons = icons
        self.ultraSunUltraMoon = ultraSunUltraMoon
    }
}
