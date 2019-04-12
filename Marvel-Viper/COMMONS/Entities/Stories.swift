//
//  Stories.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct Stories: Codable {
    let name: String?
    let resourceURI: String?
    let available: Int?
    let returned: Int?
    let collectionURI: String?
    let items: [StoriesItem]?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case resourceURI = "resourceURI"
        case available = "available"
        case returned = "returned"
        case collectionURI = "collectionURI"
        case items = "items"
    }
}

