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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.1.4/breez_sdkFFI.xcframework.zip", checksum: "0e1c4b2f7de11f258b188c554a20b1e5e36d1b9b5c6c1aab0620a0f7a7b5cfd2"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
