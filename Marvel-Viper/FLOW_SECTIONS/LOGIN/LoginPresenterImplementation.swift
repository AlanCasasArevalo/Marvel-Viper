//
//  LoginPresenterImplementation.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

class LoginPresenterImplementation: GenericPresenter<LoginViewController, LoginWireframeProtocol, LoginInteractorProtocol>, LoginPresenterProtocol {
    var model: [Result]?
    
    func getDataFromPresenter(completion: @escaping ([Result]?) -> ()) {
        self.interactor?.getDataFromInteractor(completion: { results in
            guard let resultDes = results else { return }
            self.model = resultDes
            completion(self.model)
        })
    }
}
