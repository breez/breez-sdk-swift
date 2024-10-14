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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.2/breez_sdkFFI.xcframework.zip", checksum: "2e044c5805699c8bbd25ac2b1ca5aabd30ec2e7da450988e72c0dba661087169"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
