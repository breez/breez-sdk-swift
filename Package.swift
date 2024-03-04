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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.2/breez_sdkFFI.xcframework.zip", checksum: "6d5eaa9eacac1ee4680d56300e6fb6ec91ccffde8b2052a93593781de3ef8c11"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
