// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.0.1/breez_sdkFFI.xcframework.zip", checksum: "eaee36eb2344d1a37c2ea92266fdd39efe93df213bd3255609d078afc64fc63e"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
