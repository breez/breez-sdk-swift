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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.3-dev3/breez_sdkFFI.xcframework.zip", checksum: "131ba40883edf0b6d7c22cd6cf2ec8db6b3170949c51cc3724deb30ddd66879a"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
