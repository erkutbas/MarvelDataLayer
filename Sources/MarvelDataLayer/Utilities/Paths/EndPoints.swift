//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation

typealias BaseUrls = EndpointManagers.BaseUrls
typealias Paths = EndpointManagers.Paths

enum EndpointManagers {
    
    enum BaseUrls: CustomStringConvertible {
        
        case dev
        case test
        case qa
        case prod
        
        var description: String {
            switch self {
            case .dev, .test, .qa, .prod:
                return "https://gateway.marvel.com:443/v1/public/"
            }
        }
    }
    
    enum Paths: CustomStringConvertible {
        case characterList
        case character(Int)
        case comicList(Int)
        
        var description: String {
            switch self {
            case .characterList:
                return "characters"
            case .character(let characterId):
                return "characters/\(characterId)"
            case .comicList(let characterId):
                return "characters/\(characterId)/comics"
            }
        }
    }
    
}
