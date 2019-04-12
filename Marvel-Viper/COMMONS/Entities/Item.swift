//
//  Item.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct Item: Codable {
    let resourceURI: String?
    let name: String?
    let role: String?
    
    enum CodingKeys: String, CodingKey {
        case resourceURI = "resourceURI"
        case name = "name"
        case role = "role"
    }
}
