//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import MarvelDomainLayer

final public class MarvelCharacterServiceProviderManager: MarvelCharacterServiceProviderManagerProtocol {
    
    public init() {
        
    }
    
    public func getCharacterDetailServiceProvider(with request: CharacterDataRequest) -> CharacterDetailRequestServiceProvider {
        return CharacterDetailRequestServiceProvider(request: request)
    }

    public func getCharacterListServiceProvider(with request: CharacterDataRequest) -> CharacterListRequestServiceProvider {
        return CharacterListRequestServiceProvider(request: request)
    }
    
    public func getComicsListServiceProvider(with request: ComicsDataRequest) -> ComicsListRequetServiceProvider {
        return ComicsListRequetServiceProvider(request: request)
    }
    
}
