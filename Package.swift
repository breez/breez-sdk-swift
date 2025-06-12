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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.1-rc1/breez_sdkFFI.xcframework.zip", checksum: "5917726e788f2c96b7fcf4940e0c31d492e559d592e8c2025a8bd59382bf694d"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
