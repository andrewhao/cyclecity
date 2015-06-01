//
//  HomeViewController.swift
//  Cyclecity
//
//  Created by Andrew Hao on 01/06/15.
//
//

import UIKit

class HomeViewController: UIViewController, HomeViewInterface {
  var eventHandler: HomeModuleInterface?
  
  // MARK: - View lifecycle
  
  override func viewDidLoad() {
    println("hello from the home view controller")
    super.viewDidLoad()
  }
  
  override func viewWillAppear(animated: Bool)
  {
    super.viewWillAppear(animated)
  }
  
  override func viewDidAppear(animated: Bool)
  {
    super.viewDidAppear(animated)
  }
  
  // MARK: - HomeViewInterface methods
  
  // *** implement view_interface methods here
  
  // MARK: - Button event handlers
  
  // ** handle UI events here
  
}
