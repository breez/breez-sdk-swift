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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.7/breez_sdkFFI.xcframework.zip", checksum: "cf672e89ecee2c876e804508d9450952a4577a64d72cc8d2ca0d7e51ca35d403"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
