<p align="center">
  <img src="img/tribulus_logo.png" alt="Tribulus"/>
</p>

[![Build Status](https://travis-ci.org/rosberry/Tribulus.svg?branch=master)](https://travis-ci.org/rosberry/Tribulus)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/Tribulus.svg?style=flat)](http://cocoadocs.org/docsets/Tribulus)
![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg)
[![codecov](https://codecov.io/gh/DmitryFrishbuter/Tribulus/branch/master/graph/badge.svg)](https://codecov.io/gh/DmitryFrishbuter/Tribulus)
[![License](https://img.shields.io/cocoapods/l/Tribulus.svg?style=flat)](http://cocoadocs.org/docsets/Tribulus)

**Tribulus** provides very convenient way to compose attributed strings.
It is a framework based on applying custom `Attributes` class and nice chaining syntax.

# Installation 🏁

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) with the following command:

```bash
$ brew update
$ brew install carthage
```
To integrate Tribulus into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "DmitryFrishbuter/Tribulus"
```

Run `carthage update` to build the framework and drag the built `Tribulus.framework` into your Xcode project.

### Manually

Drag `Sources` folder from [latest release](https://github.com/rosberry/Tribulus/releases) into your project.

# Usage 🏄‍

### Initialization

To initialize attributed string with required attributes, you can use following code:

```swift
let attributedString = NSAttributedString(string: "Foo", style:
    TextStyle.font(.systemFont(ofSize: 14))
	     .color(.black)
	     .backgroundColor(.cyan)
	     .baselineOffset(14.0)
)
```

### Appending

**Tribulus** also allows appending to existing mutable attributed string.

Here's a code for appending new attributed string:

```swift
let mAttributedString = NSAttributedString(string: "Foo")
	.asMutable()
	.append(" Bar", with: .color(.red))
	.append(" Baz", with: .direction(.horizontal))
```

And in the same simple way you can append any image:

```swift
let attributedString = NSMutableAttributedString(string: "Foo")
attributedString.append(UIImage(named: "Bar")!, bounds: CGRect(x: 0, y: 0, width: 40, height: 40))
```
### Insertion

Moreover **Tribulus** allows you to insert newly configured attributed string at any location:

```swift
let attributedString = NSMutableAttributedString(string: "Foo  Baz")
attributedString.insert("Bar", with: .textEffect(.letterpressStyle), at: 4)
```

or to insert an image:

```swift
attributedString.insert(UIImage(named: "Bar")!, 
			bounds: CGRect(x: 0, y: 0, width: 40, height: 40), 
                        at: 0)
```

### Additions

Instead on creating `UIFontDescriptorSymbolicTraits` you can just set **bold** and **italic** traits using `Attributes` object properties:

```swift
let attributedString = NSMutableAttributedString(string: testString)
attributedString.set(TextStyle.bold(true).italic(true))
```

# Author 🖌

Dmitry Frishbuter, dmitry.frishbuter@gmail.com

# License 📃

Tribulus is available under the MIT license. See the LICENSE file for more info.
