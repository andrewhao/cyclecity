//
//  CyclecityAppDependencies.swift
//  Cyclecity
//
//  Created by Andrew Hao on 01/06/15.
//
//

import Foundation
import UIKit

public class CyclecityAppDependencies: NSObject {
  
  public class func initWithWindow(window: UIWindow) -> CyclecityAppDependencies {
    
    let obj = CyclecityAppDependencies()
    obj.configureDependencies(window)
    
    return obj
  }
 
  var rootWireframe: RootWireframe?
  var homeWireframe: HomeWireframe?
 
  // TODO/ahao Evaluate this is needed? A no-op for now.
  public func installRootViewController() {
    // *** present first wireframe here
    rootWireframe!.window.rootViewController = homeWireframe!.homeViewController()
  }
  
  func configureDependencies(window: UIWindow) {
    // -----
    // root classes
    rootWireframe = RootWireframe.init(window: window)
    // *** add datastore
    homeWireframe = HomeWireframe()
    
    // *** module initialization
    
    // ------------------------------------------------------------------
    // begin Home module
    
    // instantiate classes
    var homePresenter: HomePresenter      = HomePresenter()
    var homeDataManager: HomeDataManager  = HomeDataManager()
    var homeInteractor: HomeInteractor    = HomeInteractor()
    
    // presenter <-> wireframe
    homePresenter.wireframe = homeWireframe
    homeWireframe!.presenter = homePresenter
    
    // presenter <-> interactor
    homePresenter.interactor = homeInteractor
    homeInteractor.presenter = homePresenter
    
    // interactor -> data_manager
    homeInteractor.dataManager = homeDataManager
    
    // data_manager -> data_store
    // *** connect datastore
    
    // connect wireframes
    homeWireframe!.rootWireframe = rootWireframe
    // *** connect more wireframes
    
    // configure delegate
    // *** add delegate here if needed
    
    // end Home module
    // ------------------------------------------------------------------
    
    // ------------------------------------------------------------------
    // begin NewRide module
    
    // instantiate classes
    var newrideWireframe: NewRideWireframe      = NewRideWireframe()
    var newridePresenter: NewRidePresenter      = NewRidePresenter()
    var newrideDataManager: NewRideDataManager  = NewRideDataManager()
    var newrideInteractor: NewRideInteractor    = NewRideInteractor()
    
    // presenter <-> wireframe
    newridePresenter.wireframe = newrideWireframe
    newrideWireframe.presenter = newridePresenter
    
    // presenter <-> interactor
    newridePresenter.interactor = newrideInteractor
    newrideInteractor.presenter = newridePresenter
    
    // interactor -> data_manager
    newrideInteractor.dataManager = newrideDataManager
    
    // data_manager -> data_store
    // *** connect datastore
    
    // connect wireframes
    newrideWireframe.rootWireframe = rootWireframe
    // *** connect more wireframes
    
    // configure delegate
    // *** add delegate here if needed
    
    // end NewRide module
    // ------------------------------------------------------------------
  }
}