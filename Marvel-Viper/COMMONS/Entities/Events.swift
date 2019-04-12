//
//  Events.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct Events: Codable {
    let available: Int?
    let returned: Int?
    let collectionURI: String?
    let items: [MarvelSeries]?
    
    enum CodingKeys: String, CodingKey {
        case available = "available"
        case returned = "returned"
        case collectionURI = "collectionURI"
        case items = "items"
    }
}
