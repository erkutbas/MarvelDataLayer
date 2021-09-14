//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import NetworkLayer
import MarvelDomainLayer

final public class CharacterDetailRequestServiceProvider: ApiServiceProvider<CharacterDataRequest> {
    
    public init(request: CharacterDataRequest) {
        guard let characterId = request.characterId else {
            fatalError("Please provide a valid character id")
        }
        super.init(baseUrl: BaseUrls.prod.description, method: .get, path: Paths.character(characterId).description, data: request)
    }
    
}
