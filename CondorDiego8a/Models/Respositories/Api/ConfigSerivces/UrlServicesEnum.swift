//
//  UrlServicesEnum.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
enum UrlServicesEnum: CustomStringConvertible {
    case getPokemon
    case getDetailsPokemon

    var description: String {
        switch self {
        case .getPokemon:
            return "pokemon"
        case .getDetailsPokemon:
            return "pokemon/"
        }
    }
}
