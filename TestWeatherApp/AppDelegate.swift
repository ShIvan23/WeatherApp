//
//  AppDelegate.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = WeatherListTableViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

