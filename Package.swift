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
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0-rc4/breez_sdkFFI.xcframework.zip", checksum: "0dfa02c5337d8cf44585ead24c363758936b49e2d405f3c7598b9725eb69492b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
