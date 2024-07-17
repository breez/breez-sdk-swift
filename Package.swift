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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc3/breez_sdkFFI.xcframework.zip", checksum: "ab375b9eab50f429873d7a3b6631b14d63a9fc618de5fd0a0c14f63b73cdb9c0"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
