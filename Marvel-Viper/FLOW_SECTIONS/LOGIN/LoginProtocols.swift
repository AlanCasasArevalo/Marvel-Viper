//
//  LoginProtocols.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol: class {
    var interactor: LoginInteractorProtocol? { get }
    var model: [Result]? { get set }
    func getDataFromPresenter( completion : @escaping ([Result]?) -> () )
}

protocol LoginViewControllerProtocol: class {
    
}

protocol LoginWireframeProtocol: class {
    
}

protocol LoginInteractorProtocol: class {
    var webService: WebServiceAssembly? { get }
    func getDataFromInteractor( completion : @escaping ([Result]?) -> () )
}
