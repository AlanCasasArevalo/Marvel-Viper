//
//  DataClass.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct DataClass: Codable {
    let offset: Int?
    let limit: Int?
    let total: Int?
    let count: Int?
    let results: [Result]?
    
    enum CodingKeys: String, CodingKey {
        case offset = "offset"
        case limit = "limit"
        case total = "total"
        case count = "count"
        case results = "results"
    }
}

