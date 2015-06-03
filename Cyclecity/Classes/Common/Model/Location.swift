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
  let latitude: Float
  let longitude: Float
  let time: NSDate?
  let elevation: Float?
  
  init(latitude: Float, longitude: Float, time: NSDate, elevation: Float) {
    self.latitude = latitude
    self.longitude = longitude
    self.time = time
    self.elevation = elevation
  }
}