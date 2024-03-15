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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.5/breez_sdkFFI.xcframework.zip", checksum: "9fb5ab8e9c4adfb99afd39f29fb406c8e433df2a3c7b9c609c4fd3f33edda572"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
