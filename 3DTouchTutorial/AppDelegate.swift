//
//  AppDelegate.swift
//  3DTouchTutorial
//
//  Created by John Codeos
//  Copyright © 2019 John Codeos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        let handled = handleShortcutItem(shortcutItem)
        completionHandler(handled)
    }
    // MARK: - Handling
    
    func handleShortcutItem(_ shortcutItem: UIApplicationShortcutItem) -> Bool {
        if shortcutItem.type != "com.johncodeos.3dtouchtutorial.nutrition" && shortcutItem.type != "com.johncodeos.3dtouchtutorial.workout"  {
            return false
        }
        
        if let index = shortcutItem.userInfo?["TabIndex"] as? Int {
            (window?.rootViewController as? UITabBarController)?.selectedIndex = index
        }
        
        return true
    }
    
}

