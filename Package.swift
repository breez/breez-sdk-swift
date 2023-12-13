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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.11/breez_sdkFFI.xcframework.zip", checksum: "96bd25a8047a011b83457e01ed218b244999374007075a8752c3d47fdf417292"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
