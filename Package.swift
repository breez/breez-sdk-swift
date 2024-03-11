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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.3/breez_sdkFFI.xcframework.zip", checksum: "e57b8ff677798552c982d5934a9062600339e8a8378ff47bca2d01c9844dcb9c"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
