//
//  AppDelegate.swift
//  SimpleScoreSwift
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import UIKit
import AdmitadSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let admitadTracker = AdmitadTracker.sharedInstance

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        admitadTracker.postbackKey = "46913BC31c581bbF4ebAEB4119eb88D4"
        admitadTracker.trackAppLaunch()
        admitadTracker.trackReturnedEvent()
        admitadTracker.trackLoyaltyEvent()
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Swift.Void) -> Bool{
        admitadTracker.continueUserActivity(userActivity)
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        admitadTracker.openUrl(url)
        return true
    }


}

