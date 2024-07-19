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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc6/breez_sdkFFI.xcframework.zip", checksum: "2e9ab52b595125c466d545b66e0c8708e6c4b1db47504ed8644e458fe2760a0c"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
