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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc3/breez_sdkFFI.xcframework.zip", checksum: "7a69d0c148d559d7bdaec4b703cf34eae024e1c92322cd1be1dac1247e9f2cf6"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
