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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.4/breez_sdkFFI.xcframework.zip", checksum: "6c5e72aa5544c96fcad975ba1d120d183c76e8e72665c3ab44efce081aa15d36"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
