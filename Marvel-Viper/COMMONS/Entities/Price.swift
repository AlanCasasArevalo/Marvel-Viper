//
//  Price.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct Price: Codable {
    let type: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case price = "price"
    }
}
