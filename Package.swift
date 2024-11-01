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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.3-rc1/breez_sdkFFI.xcframework.zip", checksum: "b67b6c15e7cfb1cbafc3f1baf14612ebe8518480397f24b54bc6e5a4f5d07102"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
