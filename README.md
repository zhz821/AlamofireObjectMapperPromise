# AlamofireObjectMapperPromise

[![CI Status](https://img.shields.io/travis/ZhihuaZhang/AlamofireObjectMapperPromise.svg?style=flat)](https://travis-ci.org/ZhihuaZhang/AlamofireObjectMapperPromise)
[![Version](https://img.shields.io/cocoapods/v/AlamofireObjectMapperPromise.svg?style=flat)](https://cocoapods.org/pods/AlamofireObjectMapperPromise)
[![License](https://img.shields.io/cocoapods/l/AlamofireObjectMapperPromise.svg?style=flat)](https://cocoapods.org/pods/AlamofireObjectMapperPromise)
[![Platform](https://img.shields.io/cocoapods/p/AlamofireObjectMapperPromise.svg?style=flat)](https://cocoapods.org/pods/AlamofireObjectMapperPromise)

## Requirements

## Installation

AlamofireObjectMapperPromise is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AlamofireObjectMapperPromise'
```

## Usage

#### Map Object
```swift
// func responseObject<T: BaseMappable>(queue: DispatchQueue? = nil, keyPath: String? = nil, mapToObject object: T? = nil, context: MapContext? = nil) -> Promise<T>
    
func fetchUserInfo() -> Promise<UserInfo> {
    return Alamofire.request(url)
        .responseObject()
}
```

#### Map Array
```swift
// func responseArray<T: BaseMappable>(queue: DispatchQueue? = nil, keyPath: String? = nil, context: MapContext? = nil) -> Promise<[T]>

func fetchMessages() -> Promise<[Message]> {
    return Alamofire.request(url)
        .responseArray()
}
```

## Author

ZhihuaZhang, shika.cho@kapps.co.jp

## License

AlamofireObjectMapperPromise is available under the MIT license. See the LICENSE file for more info.
