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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.4/breez_sdkFFI.xcframework.zip", checksum: "28db92d07702ea29c08084e6d2808ef4bb9a35075fab56e6c81cef2197e1c3d3"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
