//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import NetworkLayer
import MarvelDomainLayer

public final class ComicsListRequetServiceProvider: ApiServiceProvider<ComicsDataRequest> {
    
    init(request: ComicsDataRequest) {
        super.init(baseUrl: BaseUrls.prod.description, method: .get, path: Paths.comicList(request.characterId).description, data: request)
    }
    
}
