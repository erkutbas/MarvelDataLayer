//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import NetworkLayer
import MarvelDomainLayer

final public class CharacterListRequestServiceProvider: ApiServiceProvider<CharacterDataRequest> {
    
    public init(request: CharacterDataRequest) {
        super.init(baseUrl: BaseUrls.prod.description, method: .get, path: Paths.characterList.description, data: request)
    }
    
}
