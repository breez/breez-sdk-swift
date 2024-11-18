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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.3-rc2/breez_sdkFFI.xcframework.zip", checksum: "36d34cc1f6cdbf5d2bfc4e1b859f9994fb48f372c4dfa336c4872d58aa0f82ab"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
