//
//  AppDelegate.swift
//  MultiScreen
//
//  Created by Jean on 06/12/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        if #available(iOS 13.0, *) {
            window.rootViewController = HomeViewController()
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 13.0, *) {
            window.rootViewController = UINavigationController(rootViewController: HomeViewController())
        } else {
            // Fallback on earlier versions
        }
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    


}

