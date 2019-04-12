//
//  Endpoint.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

private enum HTTPMethod: String {
    case get = "GET"
}

internal enum Endpoint {
    case configuration
    case comics
}

internal extension Endpoint {
    func request (with baseURL: URL, parameters: [String: String]) -> URLRequest{
        let url = baseURL.appendingPathComponent(path)
        var newParameters = self.parameters
        parameters.forEach {
            newParameters.updateValue($1, forKey: $0)
        }
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        components.queryItems = newParameters.map(URLQueryItem.init)
        var request = URLRequest(url: components.url!)
        // Add Headers
        let headers = [
            "Referer":"developer.marvel.com"
        ]
        request.allHTTPHeaderFields = headers
        request.httpMethod = method.rawValue
        return request
    }
}

private extension Endpoint {
    var method: HTTPMethod{
        return .get
    }
    
    var path: String {
        switch self {
        case .configuration:
            return "configuration"
        case .comics:
            return "comics"
        }
    }
    
    var parameters: [String: String] {
        switch self {
        case .configuration:
            return [:]
        case .comics:
            return [
               "limit" : "1"
            ]
        }
    }
    
}


