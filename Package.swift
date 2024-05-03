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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0/breez_sdkFFI.xcframework.zip", checksum: "35980e6ae7ef4552a5bf5680432e91cd437d71d15c3ff3edbf4994f814353b57"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
