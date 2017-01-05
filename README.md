# ssp1-test-fastlane

A simple swift project to test integration with fastlane.

# Test

Follow the following steps

1. Go to repository folder
2. Execute `xcodebuild test -project FastlaneTest/FastlaneTest.xcodeproj -scheme FastlaneTestTests -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s'`

The output should completed 3 test cases with 2 succeeded, and 1 failed.

# UITests

1. Go to repository folder
2. Execute `xcodebuild test -project FastlaneTest/FastlaneTest.xcodeproj -scheme FastlaneTestUITests -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s' -derivedDataPath './output'`

This will also capture screenshot into `./output` folder too.

# Reference

* [xctool](https://github.com/facebook/xctool) - extension of Apple's xcodebuild
* [Automate the test process](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/08-automation.html) - Apple official document
* [Run Xcode 7 UI Tests from the command line](https://krausefx.com/blog/run-xcode-7-ui-tests-from-the-command-line)
