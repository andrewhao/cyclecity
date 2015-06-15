//
//  Ride.swift
//  Cyclecity
//
//  Created by Andrew Hao on 6/5/15.
//  Copyright (c) 2015 g9Labs Design Studio. All rights reserved.
//

import Foundation

public struct Loc {
  public var x: Float
  public var y: Float
  public init(x: Float, y: Float) {
    self.x = x
    self.y = y
  }
}

public struct Ride {
  public var distance: Float
  public var locations: [Loc] = []
  public init(distance: Float) {
    self.distance = distance
    self.locations = [Loc(x: 10, y: 12)]
  }
}
