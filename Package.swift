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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.1.0/breez_sdkFFI.xcframework.zip", checksum: "23c61a2ea24f9b8fb79ef45cfb565dba819edf96699f4969b30e4f996fac8ae4"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
