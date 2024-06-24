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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.3-rc1/breez_sdkFFI.xcframework.zip", checksum: "f2facaecf0978d0e7341479ee9fed7816d3cafd26754d144f1e4cb49ed19a7c3"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
