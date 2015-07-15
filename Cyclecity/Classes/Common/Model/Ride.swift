//
//  Ride.swift
//  Cyclecity
//
//  Created by Andrew Hao on 6/5/15.
//  Copyright (c) 2015 g9Labs Design Studio. All rights reserved.
//
import Foundation

public class Ride {
  public var distance: Float
  public var locations: [Location] = []
  public init(distance: Float) {
    self.distance = distance
    self.locations = [Location(latitude: 123.0, longitude: 123.0, time: NSDate(), elevation: 5.0)]
  }
}
