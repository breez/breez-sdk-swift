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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.5/breez_sdkFFI.xcframework.zip", checksum: "5b4ed4f238930da52fd71c03a03912f8387e2ef39e98f02783ce3718c9f45e7b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
