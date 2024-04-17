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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0-rc5/breez_sdkFFI.xcframework.zip", checksum: "9a1c0313e817da24f79130697112ce22e09328ce6da155de85a0f617e8573855"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
