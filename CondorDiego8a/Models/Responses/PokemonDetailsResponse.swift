//
//  PokemonDetailsResponse.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
class PokemonDetailsResponse: Codable {
    let abilities: [Ability]?
    let baseExperience: Int
    let forms: [Species]?
    let gameIndices: [GameIndex]?
    let height: Int
    let heldItems: [HeldItem]?
    let id: Int
    let isDefault: Bool
    let locationAreaEncounters: String
    let moves: [Move]?
    let name: String
    let order: Int
    let pastTypes: [JSONAny]?
    let species: Species?
    let sprites: Sprites?
    let stats: [Stat]?
    let types: [TypeElement]?
    let weight: Int

    enum CodingKeys: String, CodingKey {
        case abilities
        case baseExperience = "base_experience"
        case forms
        case gameIndices = "game_indices"
        case height
        case heldItems = "held_items"
        case id
        case isDefault = "is_default"
        case locationAreaEncounters = "location_area_encounters"
        case moves, name, order
        case pastTypes = "past_types"
        case species, sprites, stats, types, weight
    }

    init(abilities: [Ability]?, baseExperience: Int, forms: [Species]?, gameIndices: [GameIndex]?, height: Int, heldItems: [HeldItem]?, id: Int, isDefault: Bool, locationAreaEncounters: String, moves: [Move]?, name: String, order: Int, pastTypes: [JSONAny]?, species: Species?, sprites: Sprites?, stats: [Stat]?, types: [TypeElement]?, weight: Int) {
        self.abilities = abilities
        self.baseExperience = baseExperience
        self.forms = forms
        self.gameIndices = gameIndices
        self.height = height
        self.heldItems = heldItems
        self.id = id
        self.isDefault = isDefault
        self.locationAreaEncounters = locationAreaEncounters
        self.moves = moves
        self.name = name
        self.order = order
        self.pastTypes = pastTypes
        self.species = species
        self.sprites = sprites
        self.stats = stats
        self.types = types
        self.weight = weight
    }
}
