Cyclecity
---------

Bicycle commute metrics via your iOS device.

### VIPER

VIPER is a way to cleanly architect your iOS app for smaller, focused
classes. It is extremely undocumented and mainly exists as a concept or
principle than as a focused framework.

That being said, we are testing the usage of `boa` and `vipergen` as
scaffolding VIPER module generators.

To use boa:

    $ bundle exec boa module create Home

Or if your weapon of choice is vipergen, use:

    $ bundle exec vipergen generate RideHistory --path=Classes --language=swift --author="Andrew Hao"

### Development flow

XCode - develop as usual.

#### Continuous testing

Tests are runnable on the command line with `guard-shell` and
`xcodebuild`/`xcpretty`.

    $ ./build.sh

If you want live tests, you can run:

    $ bundle exec guard

which will watch the file system and re-run the tests as files change.
