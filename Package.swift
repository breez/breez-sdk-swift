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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.16/breez_sdkFFI.xcframework.zip", checksum: "9484a46931aa8127b4e198962b39f94071a493ecf31e6ba7a85e1762d3f517b6"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
