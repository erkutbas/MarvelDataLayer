//
//  File.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import NetworkLayer

public class BaseApiRemote<T> {
    
    private(set) var apiManager: ApiManagerProtocol
    private(set) var serviceProvider: T
    
    init(apiManager: ApiManagerProtocol, serviceProvider: T) {
        self.apiManager = apiManager
        self.serviceProvider = serviceProvider
    }
    
}
