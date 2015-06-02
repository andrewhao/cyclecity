//
//  HomeWireframe.swift
//  Cyclecity
//
//  Created by Andrew Hao on 01/06/15.
//
//

import Foundation
import UIKit

let HomeViewControllerIdentifier = "HomeViewController"

public class HomeWireframe: NSObject {
  public var rootWireframe: RootWireframe?
  var presenter: HomePresenter?
  var viewController: HomeViewController?

  public func presentSelfFromViewController(viewController: UIViewController) {
      // save reference
      self.viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)

      // view <-> presenter
      self.presenter?.userInterface = self.viewController
      self.viewController?.eventHandler = self.presenter

      // present controller
      // *** present self with RootViewController
  }
  
  func mainStoryboard() -> UIStoryboard {
    let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    return storyboard
  }
  
  func homeViewController() -> HomeViewController {
    let storyboard: UIStoryboard = mainStoryboard()
    let homeViewController: HomeViewController = storyboard.instantiateViewControllerWithIdentifier(HomeViewControllerIdentifier) as! HomeViewController
    return homeViewController
  }

}
