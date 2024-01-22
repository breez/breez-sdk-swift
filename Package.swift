// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.13/breez_sdkFFI.xcframework.zip", checksum: "37b2ff723fa8d8cf6882c4abf1dc9da1650dedb327e4569a73db46efcdfff81b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
