//
//  HomeWireframe.swift
//  Cyclecity
//
//  Created by Andrew Hao on 01/06/15.
//
//

import Foundation
import UIKit

class HomeWireframe: NSObject {
    var rootWireframe: RootWireframe?
    var presenter: HomePresenter?
    var viewController: HomeViewController?

    func presentSelfFromViewController(viewController: UIViewController) {
        // save reference
        self.viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)

        // view <-> presenter
        self.presenter?.userInterface = self.viewController
        self.viewController?.eventHandler = self.presenter

        // present controller
        // *** present self with RootViewController
    }
}
