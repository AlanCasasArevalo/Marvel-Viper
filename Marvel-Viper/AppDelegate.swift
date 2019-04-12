//
//  AppDelegate.swift
//  Marvel-Viper
//
//  Created by Alan Casas on 12/04/2019.
//  Copyright © 2019 Alan Casas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.cyan
        window?.rootViewController = UIViewController()
        
        let navi = UINavigationController()
        let core = CoreAssembly(navigationController: navi)
        
        core.webServiceAssembly.webService.loadGenericFromApi(type: MarvelComic.self, endpoint: .configuration) { result in
            print(result)
        }
        
        
        return true
    }
}

