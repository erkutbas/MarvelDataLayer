//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import RxSwift
import MarvelDomainLayer

public protocol MarvelCharacterDataApiRemoteProtocol {
    
    func getCharacterList(with request: CharacterDataRequest) -> Single<CharacterDataResponse>
    
    func getCharacterDetail(with request: CharacterDataRequest) -> Single<CharacterDataResponse>
    
    func getComicsData(with request: ComicsDataRequest) -> Single<ComicsDataResponse>
    
}
