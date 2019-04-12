//
//  LoginAssembly.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import UIKit

class LoginAssembly {
    
    private let webServiceAssembly = WebServiceAssembly()
    
    func getLoginViewController() -> LoginViewController {
        let viewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        viewController.presenter = getLoginPresenter(viewController: viewController)
        return viewController
    }
    
    func getLoginPresenter (viewController: LoginViewController) -> LoginPresenterProtocol {
        let presenter = LoginPresenterImplementation(viewController: viewController, wireframe: getLoginWireframe(viewController: viewController), interactor: getLoginInteractor())
        presenter.interactor = getLoginInteractor()
        return presenter
    }
    
    func getLoginWireframe( viewController: LoginViewController ) -> LoginWireframeProtocol {
        let wireframe = LoginWireframeImplementation(viewController: viewController)
        return wireframe
    }
    
    func getLoginInteractor () -> LoginInteractorProtocol {
        let interactor = LoginIntereactorImplementation()
        interactor.webService = webServiceAssembly
        return interactor
    }
    
    
    
}

