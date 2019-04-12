//
//  TextObject.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct TextObject: Codable {
    let type: String
    let language: String
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case language = "language"
        case text = "text"
    }
}

