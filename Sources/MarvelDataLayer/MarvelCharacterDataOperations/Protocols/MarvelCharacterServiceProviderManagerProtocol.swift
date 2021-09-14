//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import MarvelDomainLayer

public protocol MarvelCharacterServiceProviderManagerProtocol {
    
    func getCharacterListServiceProvider(with request: CharacterDataRequest) -> CharacterListRequestServiceProvider
    
    func getCharacterDetailServiceProvider(with request: CharacterDataRequest) -> CharacterDetailRequestServiceProvider
    
    func getComicsListServiceProvider(with request: ComicsDataRequest) -> ComicsListRequetServiceProvider
    
}
