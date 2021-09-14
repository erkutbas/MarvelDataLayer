//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import MarvelDomainLayer
import RxSwift

final public class MarvelCharacterDataRepository: BaseRepository<MarvelCharacterDataApiRemoteProtocol>, MarvelCharacterOperationsProtocol {
    
    public func getCharacterList(with request: CharacterDataRequest) -> Single<CharacterDataResponse> {
        return apiRemote.getCharacterList(with: request)
    }
    
    public func getCharacterDetail(with request: CharacterDataRequest) -> Single<CharacterDataResponse> {
        return apiRemote.getCharacterDetail(with: request)
    }
    
    public func getComicsData(with request: ComicsDataRequest) -> Single<ComicsDataResponse> {
        return apiRemote.getComicsData(with: request)
    }
    
}
