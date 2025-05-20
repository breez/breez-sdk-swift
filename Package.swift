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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.0/breez_sdkFFI.xcframework.zip", checksum: "9b997857293eba36eeba45c1fff3b3795a56fac4d3c5c7b66db8e55e16b6bac4"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
