# LoadingShimmer
An easy way to add a shimmering effect to any view with just single line of code. It is useful as an unobtrusive loading indicator. This is a network request waiting for the framework, the framework to increase the dynamic effect, convenient and fast, a line of code can be used.

[![CI Status](https://img.shields.io/travis/jogendra/LoadingShimmer.svg?style=flat)](https://travis-ci.org/jogendra/LoadingShimmer)
[![Version](https://img.shields.io/cocoapods/v/LoadingShimmer.svg?style=flat)](https://cocoapods.org/pods/LoadingShimmer)
[![License](https://img.shields.io/cocoapods/l/LoadingShimmer.svg?style=flat)](https://cocoapods.org/pods/LoadingShimmer)
[![Platform](https://img.shields.io/cocoapods/p/LoadingShimmer.svg?style=flat)](https://cocoapods.org/pods/LoadingShimmer)

<table>
<tr>
<td>
<img src="https://github.com/jogendra/LoadingShimmer/blob/master/Screenshots/demo.gif" width="330">
</td>
<td><img src="https://github.com/jogendra/LoadingShimmer/blob/master/Screenshots/tableDemo.gif" width="360"></td>
  </tr>
  </table>

## Demo/Example
For demo:
```
$ pod try LoadingShimmer
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```
$ cd Example
```
```
$ pod install
```
If you don't have CocoaPods installed, grab it with `[sudo] gem install cocoapods`.
```
$ open LoadingShimmer.xcworkspace
```

## Requirements
- iOS 10.0 or later
- Swift 5+
- Xcode 10+

## Installation

#### CocoaPods
LoadingShimmer is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LoadingShimmer'
```
#### Manual Installation
Just drag the `LoadingShimmer.swift` files into your project.

## Usage
Start Covering Loading -
```swift
LoadingShimmer.startCovering(view)
```
Stop Covering Loading -
```swift
LoadingShimmer.stopCovering(view)
```
Don't forget to `import  LoadingShimmer`

## Author

<table>
<tr>
<td>
<img src="https://avatars2.githubusercontent.com/u/20956124?s=400&u=01fab3fc9bb3d2ee799e314d3fe23c54d1deeb07&v=4" width="180"/>

Jogendra Singh

<p align="center">
<a href = "https://github.com/jogendra"><img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36"/></a>
<a href = "https://twitter.com/jogendrafx"><img src = "https://www.shareicon.net/download/2016/07/06/107115_media.svg" width="36" height="36"/></a>
<a href = "https://www.linkedin.com/in/jogendrasingh24/"><img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36"/></a>
</p>
</td>
</tr> 
</table>

The pod is inspired by [DWLoadingShimmer](https://github.com/iDwyane/DWLoadingShimmer)

## License

LoadingShimmer is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
