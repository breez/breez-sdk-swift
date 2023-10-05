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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.5/breez_sdkFFI.xcframework.zip", checksum: "ce5ff9c21d6cb74c35f6d93110727d0127392f39f8f9c57c38fe4bb3502a8fd8"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
