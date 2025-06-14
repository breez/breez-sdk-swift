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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.1-rc2/breez_sdkFFI.xcframework.zip", checksum: "08df8693c80b165a3b5ab3d4cf6517d86e73d2e030163b7a34875e4d2d86b69a"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
