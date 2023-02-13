//
//  AppDelegate.swift
//  Adivina
//
//  Created by Phinder 2022 on 31/01/23.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigation = UINavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        navigation.isNavigationBarHidden = true
        
        let x = InicioMain.createModule(navigation: navigation)
        
        navigation.pushViewController(x, animated: true)
        return true
    }

    

}

