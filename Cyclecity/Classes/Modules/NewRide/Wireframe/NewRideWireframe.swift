//
//  NewRideWireframe.swift
//  Cyclecity
//
//  Created by Andrew Hao on 02/06/15.
//
//

import Foundation
import UIKit

public class NewRideWireframe: NSObject {
    var rootWireframe: RootWireframe?
    var presenter: NewRidePresenter?
    var viewController: NewRideViewController?

    func presentSelfFromViewController(viewController: UIViewController) {
        // save reference
        self.viewController = NewRideViewController(nibName: "NewRideViewController", bundle: nil)

        // view <-> presenter
        self.presenter?.userInterface = self.viewController
        self.viewController?.eventHandler = self.presenter

        // present controller
        // *** present self with RootViewController
    }
}
