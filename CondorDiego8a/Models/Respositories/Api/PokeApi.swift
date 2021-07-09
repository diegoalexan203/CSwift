//
//  PokeApi.swift
//  CondorDiego8a
//
//  Created by Diego on 8/07/21.
//

import Foundation
import Moya

public enum PokeApi {
    case getPokemon (limit: Int)
    case getDetailPokemon(idPokemon: String)
}

extension PokeApi: TargetType {
    public var method: Moya.Method {
        switch self {
        case .getPokemon:
            return .get
        case .getDetailPokemon:
            return .get
        }
    }

    public var sampleData: Data {
        switch self {
        case .getPokemon:
            return Data()
        case .getDetailPokemon:
            return Data()
        }
    }

    public var task: Task {
        switch self {
        case .getPokemon (let limit):
            return .requestParameters(parameters: ["limit": limit], encoding: URLEncoding.queryString)
        case .getDetailPokemon:
            return .requestPlain
        }
    }

    public var headers: [String: String]? {
        switch self {
        case .getPokemon:
            return nil
        case .getDetailPokemon:
            return nil
        }
    }

    public var baseURL: URL {
        return URL(string: "https://pokeapi.co/api/v2/")!
    }

    public var path: String {
        switch self {
        case .getPokemon:
            return UrlServicesEnum.getPokemon.description
            
        case .getDetailPokemon(let idPokemon):
            return UrlServicesEnum.getDetailsPokemon.description+idPokemon
        }
    }
}
