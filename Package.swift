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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.10/breez_sdkFFI.xcframework.zip", checksum: "2c2027448c1377591b2cee4f61e82a77e95615eb262117c82f6ec36eac76de37"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
