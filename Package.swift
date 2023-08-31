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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.1/breez_sdkFFI.xcframework.zip", checksum: "1641c6d938a8eb26ecd750bead64b319144907d3d73f91fc5e346795c4d7072f"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
