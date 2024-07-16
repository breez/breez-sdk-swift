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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc3/breez_sdkFFI.xcframework.zip", checksum: "6f291baa1e3d1e5827d6998b3ea36deeaeead337e427cd8c6158b7fea69663e0"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
