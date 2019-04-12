//
//  WebServiceConfiguration.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

internal struct WebServiceConfiguration {
    
    let apiKey: String
    
    private class Dummy {}
    
    static let `default` =
        WebServiceConfiguration(apiKey: Bundle(for: WebServiceConfiguration.Dummy.self) .infoDictionary?["MARVEL_API"] as? String ?? "")
    
    var parameters: [String : String] {
        return [
            "apikey" : apiKey
        ]
    }
}


