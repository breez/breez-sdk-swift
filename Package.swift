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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.3-rc1/breez_sdkFFI.xcframework.zip", checksum: "6b3a7065d1c9e4044d5de983bd5907abb14f125121e4b1846d7bcd60e0b86460"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
