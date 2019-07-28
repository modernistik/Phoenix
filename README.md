# Phoenix
The Phoenix is a persistence job queue system for Swift. It enables building idempotent and asynchronous job tasks using `Operation` (NSOperation), that allows for jobs to be stored when the application is about to terminate, and be restored (resumed) once the app has relaunched. The API design pattern was inspired by the wonderful [Sidekiq](https://sidekiq.org/) framework.

[![CI Status](https://img.shields.io/travis/modernistik/Phoenix.svg?style=flat)](https://travis-ci.org/apersaud/Phoenix)
[![Version](https://img.shields.io/cocoapods/v/Phoenix.svg?style=flat)](https://cocoapods.org/pods/Phoenix)
[![License](https://img.shields.io/cocoapods/l/Phoenix.svg?style=flat)](https://cocoapods.org/pods/Phoenix)
[![Platform](https://img.shields.io/cocoapods/p/Phoenix.svg?style=flat)](https://cocoapods.org/pods/Phoenix)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation
Phoenix is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Phoenix'
```

## Usage
Documentation and guide coming soon.

## Todo
* Support for Codable protocol for Workers.
* Support for additional serializers and storage mechanisms.
* A more full featured example application.

## Author

Anthony Persaud, https://www.modernistik.com

## License

Phoenix is available under the MIT license. See the LICENSE file for more info.
