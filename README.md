# PiQue

## _The 'P' and 'Q' appending framework._

[![PiQue Testing](https://github.com/theCodingDJ/pique/actions/workflows/swift.yml/badge.svg?branch=main)](https://github.com/theCodingDJ/pique/actions/workflows/swift.yml)

PiQue is a small framework designed to take a string and, by appending **P** and **Q** as its suffix using iteration, compare the results against another string provided.

## How to use?

### 1. Integrate the framework into your project

##### Using CocoaPods

Add the following to your Podfile:
```ruby
pod 'PiQue', :git => 'https://github.com/theCodingDJ/PiQue.git'
```
##### Using Swift Package Manager

In Xcode select the File > Swift Packages > Add Package Dependency and enter the Package URL:
```
https://github.com/theCodingDJ/PiQue.git
```
To integrate using Apple's Swift package manager, without Xcode integration, add the following as a dependency to your _**Package.swift**_ file:
```swift
.package(url: "https://github.com/theCodingDJ/PiQue.git", .upToNextMajor(from: "1.0.0"))
```

### 2. Use in your code

Start by importing the framework to your code:
```swift
import PiQue
```

Then declare a convertor instance:
```swift
let converter = PiQueConverter()
```

Then call the method providing it with initial and target values and handle the result:
```swift
converter.tryConverting(initial: "PQQ", to: "PQQP") { result in
    print("Result: \(result)")
}
```  
<br /> 
<br /> 

> Hint: you can always refer to the provided **Example** iOS project or the framework tests. They are **XCTest**-based and easy to read.

