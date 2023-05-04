// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.0.3/breez_sdkFFI.xcframework.zip", checksum: "2ba06b155a0c4ba200dc2909c673ef1e28a952d3a592f5ea793d1b1241a7b844"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
