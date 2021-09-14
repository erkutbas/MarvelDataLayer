//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation

public class BaseRepository<T> {
    
    private(set) public var apiRemote: T
    
    public init(apiRemote: T) {
        self.apiRemote = apiRemote
    }
    
}
