# BreezSDK – Swift Package

The [Breez SDK](https://github.com/breez/breez-sdk) enables mobile developers to integrate lightning and bitcoin payments into their apps with a very shallow learning curve. More information can be found [here](https://github.com/breez/breez-sdk).

## 👨‍🔧 Installation

This package is intended to be used with the [Swift Package Manager](https://www.swift.org/package-manager/).

### Xcode

Via `File > Add Packages...`, add

```
https://github.com/breez/breez-sdk-swift.git
```

as a package dependency in Xcode.

### Swift Package

Add the following to the dependencies array in your `Package.swift`:

``` swift
.package(url: "https://github.com/breez/breez-sdk-swift.git", from: "0.0.4"),
```

## 📄 Usage

``` swift
import BreezSDK

// Todo
```

## 💡 Information for Maintainers and Contributors

This repository is used to publish a Swift package providing Swift bindings to the Breez SDK's [underlying Rust implementation](https://github.com/breez/breez-sdk). The Swift bindings are generated using [UniFFi](https://github.com/mozilla/uniffi-rs).

Any changes to the Breez SDK, the Swift bindings, and the configuration of this Swift package must be made via the [breez-sdk](https://github.com/breez/breez-sdk) repo.

To release a new version of this package, go to the Actions tab of this GitHub repository. Then select the *Publish Swift Package* workflow and run it on the `main` branch. It will ask for a version as input. This allows you to specify the version (e.g., *0.0.1*) of the [breez-sdk](https://github.com/breez/breez-sdk) repository that should be released as a Swift package.
