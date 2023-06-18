# BreezSDK — Swift Bindings

The [Breez SDK](https://github.com/breez/breez-sdk) enables mobile developers to integrate Lightning and bitcoin payments into their apps with a very shallow learning curve. More information can be found here: [breez/breez-sdk](https://github.com/breez/breez-sdk)

This repository maintains the Breez SDK's official [Swift](https://www.swift.org/) bindings.

## 👨‍🔧 Installation

We support integration via the [Swift Package Manager](https://www.swift.org/package-manager/) and via [CocoaPods](https://cocoapods.org/).

### Swift Package Manager

#### Installation via Xcode

Via `File > Add Packages...`, add

```
https://github.com/breez/breez-sdk-swift.git
```

as a package dependency in Xcode.

#### Installation via Swift Package Manifest

Add the following to the dependencies array of your `Package.swift`:

``` swift
.package(url: "https://github.com/breez/breez-sdk-swift.git", from: "0.0.4"),
```

### CocoaPods

Add the Breez SDK to your `Podfile` like so:

``` ruby
target '<YourApp' do
  use_frameworks!

  pod 'BreezSDK'
end
```

## 📄 Usage

``` swift
import BreezSDK

// See: https://sdk-doc.breez.technology
```

## 🚀 Releasing

To release a new version of the Swift bindings:

1. Go to the Actions tab of this GitHub repository. 
1. Select the *Publish Swift Package* workflow and run it on the `main` branch.
1. It will ask for a version as input. The version you input here needs to correspond to an already existing version (e.g., *0.0.1*) of the main [breez-sdk](https://github.com/breez/breez-sdk) repository.
