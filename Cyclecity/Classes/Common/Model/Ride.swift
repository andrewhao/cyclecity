//
//  Ride.swift
//  Cyclecity
//
//  Created by Andrew Hao on 6/5/15.
//  Copyright (c) 2015 g9Labs Design Studio. All rights reserved.
//

import Foundation

public struct Ride {
  public let locations: [Location]
  public let distance: Float
  public init(distance: Float, locations: [Location]) {
    self.distance = distance
    self.locations = locations
  }
}
