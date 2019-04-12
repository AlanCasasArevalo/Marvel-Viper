//
//  LoginIntereactorImplementation.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

class LoginIntereactorImplementation : GenericInteractor<LoginPresenterProtocol>, LoginInteractorProtocol {
    var webService: WebServiceAssembly?
    
    func getDataFromInteractor(completion: @escaping ([Result]?) -> ()) {
        webService?.webService.loadGenericFromApi(type: MarvelComic.self, endpoint: .comics) { result in
            guard let resultFinal = result else { return }
            
            completion(resultFinal.data?.results)
        }
    }
    
}
