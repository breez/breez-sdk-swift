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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.3/breez_sdkFFI.xcframework.zip", checksum: "1aab6f5ba427f15bfb8b6cff0496efd91999d70db24981380e904035ddcff356"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
