//  AppDelegate.swift
//  Cyclecity
//
//  Created by Andrew Hao on 3/4/15.
//  Copyright (c) 2015 g9Labs. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  let appDependencies = AppDependencies()
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    appDependencies.installRootViewControllerIntoWindow(window!)
    return true
  }
}
