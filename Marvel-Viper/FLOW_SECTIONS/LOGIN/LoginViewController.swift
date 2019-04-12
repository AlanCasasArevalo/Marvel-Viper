//
//  LoginViewController.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import UIKit

class LoginViewController: GenericViewController<LoginPresenterProtocol>, LoginViewControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.getDataFromPresenter(completion: { results in
            guard let resultDes = results else { return }
            
            print(resultDes)
        })
    }
}
