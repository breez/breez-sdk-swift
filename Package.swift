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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.9/breez_sdkFFI.xcframework.zip", checksum: "c1a7db5f483fc822c420f651dc0192cad586831c6c8c36c29fda74f0c55bef30"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
