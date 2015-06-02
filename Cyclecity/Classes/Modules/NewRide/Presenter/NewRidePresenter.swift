//
//  NewRidePresenter.swift
//  Cyclecity
//
//  Created by Andrew Hao on 02/06/15.
//
//

import Foundation

class NewRidePresenter: NSObject, NewRideModuleInterface {
    var interactor: NewRideInteractor?
    var wireframe: NewRideWireframe?
    var userInterface: NewRideViewInterface?

    // MARK: - NewRideModuleInterface methods
    // implement module interface here
}
