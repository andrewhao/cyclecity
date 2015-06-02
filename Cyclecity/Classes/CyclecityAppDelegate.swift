//
//  CyclecityAppDelegate.swift
//  Cyclecity
//
//  Created by Andrew Hao on 01/06/15.
//
//

import UIKit

@UIApplicationMain
class CyclecityAppDelegate: UIResponder, UIApplicationDelegate
{
  var window: UIWindow?
  var dependencies: CyclecityAppDependencies?
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
    // initialize window
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    self.window?.backgroundColor = UIColor.whiteColor()
    
    // initialize dependencies
    self.dependencies = CyclecityAppDependencies.initWithWindow(self.window!)
    
    // adding RootViewController
    self.dependencies!.installRootViewController()
    
    self.window!.makeKeyAndVisible()
    
    return true
  }
}
