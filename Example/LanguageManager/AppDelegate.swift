//
//  AppDelegate.swift
//  LanguageManagerDemo
//
//  Created by sameh on 10/17/17.
//  Copyright © 2017 Sameh. All rights reserved.
//

import UIKit
import LanguageManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        LanguageManager.defaultLanguage = .en
        LanguageManager.firstTimeLanguageSetting()
        return true
    }
 


}

