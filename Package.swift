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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.3-dev3/breez_sdkFFI.xcframework.zip", checksum: "c4cbd56b6ec5f2ae4707d37643153fef8dcb3451be5dd6b2094a71f60f34b261"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
