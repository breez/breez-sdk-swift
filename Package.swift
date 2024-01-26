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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.15/breez_sdkFFI.xcframework.zip", checksum: "b5469ce375ab4937172fa2113a974d7225a95daac2f2b96ac7f030aad05cbe40"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
