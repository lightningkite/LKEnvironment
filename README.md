# LKEnvironment

[![CI Status](http://img.shields.io/travis/Erik Sargent/LKEnvironment.svg?style=flat)](https://travis-ci.org/Erik Sargent/LKEnvironment)
[![Version](https://img.shields.io/cocoapods/v/LKEnvironment.svg?style=flat)](http://cocoapods.org/pods/LKEnvironment)
[![License](https://img.shields.io/cocoapods/l/LKEnvironment.svg?style=flat)](http://cocoapods.org/pods/LKEnvironment)
[![Platform](https://img.shields.io/cocoapods/p/LKEnvironment.svg?style=flat)](http://cocoapods.org/pods/LKEnvironment)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LKEnvironment is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/Lightningkite/LKPodspec.git'

pod "LKEnvironment"
```

## Setup

First, create a different build target for each environment you would like to set up. Next, create a plist file with the format `BUILD_TARGET_NAME-Env.plist`. This plist will store information for the different build targets. 

It is recommended to add a `description` key to the plist with the description of what the build target is, eg: *Testing*, *Staging*, etc.

Extend the `Environment` object to add additional properties. These properties will be pulled from the `Environment.environmentDict` object. For example, to add the property `apiBasePath`, you would first add the key to the plist file with it's corresponding value, and add the following to the Environment extension

```Swift
static var apiBasePath: String {
    return Environment.environmentDict["apiBasePath"] as? String ?? ""
}
```

The environment flags can be used by importing `LKEnvironment`. For example, to get the description string for the environment, call `Environment.envDescription`.



## Author

Erik Sargent, erik@lightningkite.com

## License

LKEnvironment is available under the MIT license. See the LICENSE file for more info.
