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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.4/breez_sdkFFI.xcframework.zip", checksum: "7e7ca42814d663f55c7ad85579b3f5496654086d27b631190ab2f42c3484f29b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
