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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.7/breez_sdkFFI.xcframework.zip", checksum: "4007e759277fd9755784085c065f149de7a0b3607f28d40b94e2f933b61a9a6a"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
