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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.1-rc2/breez_sdkFFI.xcframework.zip", checksum: "6721bf526ebbb00234b50906feb4ff88c853406a4f0705030de3c22e9defa4df"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
