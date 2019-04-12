//
//  Result.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

struct Result: Codable {
    let id: String
    let name: String
    let digitalId: String
    let title: String
    let issueNumber: String
    let variantDescription: String
    let description: String
    let modified: String
    let isbn: String
    let upc: String
    let diamondCode: String
    let ean: String
    let issn: String
    let format: String
    let pageCount: String
    let textObjects: [TextObject]
    let resourceURI: String
    let startYear: String
    let endYear: String
    let urls: [URLElement]
    let series: MarvelSeries
    let variants: [MarvelSeries]
    let collections: [MarvelSeries]
    let collectedIssues: [MarvelSeries]
    let dates: [DateElement]
    let prices: [Price]
    let thumbnail: Thumbnail
    let images: [Thumbnail]
    let creators: Characters
    let characters: Characters
    let stories: Stories
    let events: Events
    let rating: String
    let comics: Comics

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case digitalId = "digitalId"
        case title = "title"
        case issueNumber = "issueNumber"
        case variantDescription = "variantDescription"
        case description = "description"
        case modified = "modified"
        case isbn = "isbn"
        case upc = "upc"
        case diamondCode = "diamondCode"
        case ean = "ean"
        case issn = "issn"
        case format = "format"
        case pageCount = "pageCount"
        case textObjects = "textObjects"
        case resourceURI = "resourceURI"
        case startYear = "startYear"
        case endYear = "endYear"
        case urls = "urls"
        case series = "series"
        case variants = "variants"
        case collections = "collections"
        case collectedIssues = "collectedIssues"
        case dates = "dates"
        case prices = "prices"
        case thumbnail = "thumbnail"
        case images = "images"
        case creators = "creators"
        case characters = "characters"
        case stories = "stories"
        case events = "events"
        case rating = "rating"
        case comics = "comics"
    }
}
