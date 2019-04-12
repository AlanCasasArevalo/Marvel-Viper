//
//  URLElement.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct URLElement: Codable {
    let type: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case url = "url"
    }
}
