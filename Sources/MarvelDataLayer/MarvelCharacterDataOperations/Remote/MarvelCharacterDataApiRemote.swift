//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import RxSwift
import MarvelDomainLayer

final public class MarvelCharacterDataApiRemote: BaseApiRemote<MarvelCharacterServiceProviderManagerProtocol>, MarvelCharacterDataApiRemoteProtocol {
    
    public func getCharacterList(with request: CharacterDataRequest) -> Single<CharacterDataResponse> {
        return apiManager.executeRequest(urlRequestConvertible: serviceProvider.getCharacterListServiceProvider(with: request))
    }
    
    public func getCharacterDetail(with request: CharacterDataRequest) -> Single<CharacterDataResponse> {
        return apiManager.executeRequest(urlRequestConvertible: serviceProvider.getCharacterDetailServiceProvider(with: request))
    }
    
    public func getComicsData(with request: ComicsDataRequest) -> Single<ComicsDataResponse> {
        return apiManager.executeRequest(urlRequestConvertible: serviceProvider.getComicsListServiceProvider(with: request))
    }
    
}
