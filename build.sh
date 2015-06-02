#!/bin/bash

xcodebuild \
  -workspace Cyclecity.xcworkspace \
  -scheme Cyclecity \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 6,OS=8.3' \
  test | bundle exec xcpretty -c
