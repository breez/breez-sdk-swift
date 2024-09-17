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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.0-rc1/breez_sdkFFI.xcframework.zip", checksum: "59b488ce166ea997d7568628e822944a9d0fa87b17786ccdbb4df2443b7aa6e8"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
