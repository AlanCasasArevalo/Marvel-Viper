//
//  MarvelComic.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct MarvelComic: Codable {
    let code: String
    let status: String
    let copyright: String
    let attributionText: String
    let attributionHTML: String
    let data: DataClass
    let etag: String
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case status = "status"
        case copyright = "copyright"
        case attributionText = "attributionText"
        case attributionHTML = "attributionHTML"
        case data = "data"
        case etag = "etag"
    }
}







