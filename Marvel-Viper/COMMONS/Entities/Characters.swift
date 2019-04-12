//
//  Characters.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation


struct Characters: Codable {
    let available: String
    let returned: String
    let collectionURI: String
    let items: [CharactersItem]
    
    enum CodingKeys: String, CodingKey {
        case available = "available"
        case returned = "returned"
        case collectionURI = "collectionURI"
        case items = "items"
    }
}

