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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.6/breez_sdkFFI.xcframework.zip", checksum: "9ba3beb9053eafb1a7f83e91e09170cd57b1f118149af35fdb1cf4cb444dcd1c"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
