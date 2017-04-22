# ssp1-fastlane

A simple swift project to test integration with fastlane.

# Getting Familar with Automation via Command line

## Tests

Follow the following steps

1. Go to repository folder
2. Execute `xcodebuild test -project FastlaneTest/FastlaneTest.xcodeproj -scheme FastlaneTestTests -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s'`

## UI Tests

1. Go to repository folder
2. Execute `xcodebuild test -project FastlaneTest/FastlaneTest.xcodeproj -scheme FastlaneTestUITests -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s'` without capturing screenshots and saving out to files or `xcodebuild test -project FastlaneTest/FastlaneTest.xcodeproj -scheme FastlaneTestUITests -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s' -derivedDataPath './output'` that will also capture screenshot into `./output` folder too.

# Fastlane

Commands are modified and added as needed for this project. You can execute commands as follows.
But first make sure you install [fastlane](https://github.com/fastlane/fastlane).

* `fastlane itunes` - will create a new application on iTunes.
* `fastlane beta` - will create and sign .ipa file then upload a build to beta testflight
* `fastlane test` - will allow testing for both normal tests and UI tests
* `fastlane screenshots` - will take screenshots and output them into `./screenshots` folder. Taking screenshots done as part of UI Tests.

More information on steps, along with visual results at my blog post ["Hands-On Fastlane"](https://wasin.io/blog/2017/01/15/hands-on-fastlane.html).

# Reference

* [xctool](https://github.com/facebook/xctool) - extension of Apple's xcodebuild
* [Automate the test process](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/08-automation.html) - Apple official document
* [Run Xcode 7 UI Tests from the command line](https://krausefx.com/blog/run-xcode-7-ui-tests-from-the-command-line)
