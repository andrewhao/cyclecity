//
//  NewRidePresenter.swift
//  Cyclecity
//
//  Created by Andrew Hao on 02/06/15.
//
//

import Foundation

public class NewRidePresenter: NSObject, NewRideModuleInterface {
  public var interactor: NewRideInteractor?
  public var wireframe: NewRideWireframe?
  public var userInterface: NewRideViewInterface?

  // MARK: - NewRideModuleInterface methods
  // implement module interface here

  public func startRecordingGpsTrack() {
    interactor!.startRecordingGpsTrack()
  }
}
