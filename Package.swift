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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.1-rc3/breez_sdkFFI.xcframework.zip", checksum: "d5a49e9696d300bd72973c0c37e7ab97f21941b1208f002979c8004965081646"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
