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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.0/breez_sdkFFI.xcframework.zip", checksum: "c4ec2099c5f58bd4ad288040941e779038718c7cdf7dab59dd6c6a4f10b43ee5"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
