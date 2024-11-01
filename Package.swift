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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.3-rc1/breez_sdkFFI.xcframework.zip", checksum: "d7594e8af4e6bab9c1adff04b815d152d91e697413c2a0d1db281fa4236cd363"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
