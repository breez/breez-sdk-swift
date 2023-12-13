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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.12/breez_sdkFFI.xcframework.zip", checksum: "da086172222ceb502bf11d0b54c56cead4171757f25793b784079a858f39315b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
