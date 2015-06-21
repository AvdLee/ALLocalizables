# ALLocalizables

[![Version](https://img.shields.io/cocoapods/v/ALLocalizables.svg?style=flat)](http://cocoapods.org/pods/ALLocalizables)
[![License](https://img.shields.io/cocoapods/l/ALLocalizables.svg?style=flat)](http://cocoapods.org/pods/ALLocalizables)
[![Platform](https://img.shields.io/cocoapods/p/ALLocalizables.svg?style=flat)](http://cocoapods.org/pods/ALLocalizables)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

#### Localizable labels directly from the interface builder

Set the baseclass of your interface UILabel or UIButton to `ALLocalizableLabel` or `ALLocalizableButton` and enter the localization string in the new available property `Localize string`.
This will update the label directly in the interface builder, based on your localization file. 

Make sure to enable `Automatically Refresh Views` through the menu: `Editor->Automatically Refresh Views` when you're in the interface builder.

##### Reference
This project is a result of a StackOverflow post:
http://stackoverflow.com/a/27418239/1485701

## Requirements
- Xcode 6
- iOS 7.0+

## Installation

ALLocalizables is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ALLocalizables"
```

## Author

Antoine van der Lee, contact@avanderlee.com

## License

ALLocalizables is available under the MIT license. See the LICENSE file for more info.
