// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.0.1/breez_sdkFFI.xcframework.zip", checksum: "92c4c6e2238c864c0fc3789701892ee60ae28a6e24e18d1a7da882020d6c14d0"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
