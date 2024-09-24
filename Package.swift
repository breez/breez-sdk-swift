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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.1/breez_sdkFFI.xcframework.zip", checksum: "94212fbed5f71cae83cb652289261893d3e77e2a5559302901de8d4f04d469b1"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
