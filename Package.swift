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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc1/breez_sdkFFI.xcframework.zip", checksum: "2190ece94fe062cade22eafa6710ea42a94a6e122b4ec186e848f48e2bd66ffa"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
