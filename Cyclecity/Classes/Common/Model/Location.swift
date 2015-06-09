//
//  Location.swift
//  Cyclecity
//
//  Created by Andrew Hao on 6/2/15.
//  Copyright (c) 2015 g9Labs Design Studio. All rights reserved.
//
//  A value object that stores latitude and longitude coordinates 
//  at a specific point in time.

import Foundation

public struct Location {
  public let latitude: Float
  public let longitude: Float
  public let time: NSDate?
  public let elevation: Float?
  
  public init(latitude: Float, longitude: Float, time: NSDate, elevation: Float) {
    self.latitude = latitude
    self.longitude = longitude
    self.time = time
    self.elevation = elevation
  }
}