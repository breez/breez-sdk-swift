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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.7.2/breez_sdkFFI.xcframework.zip", checksum: "d351ef02b2cd246169b32df1f1032644e9d6561c39f506618bc5811464c3df04"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
