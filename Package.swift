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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.2-dev1/breez_sdkFFI.xcframework.zip", checksum: "96f4eb961679e18433510f0a3d12b410fa3d2a08e3a5c03f516a9d47f7b7087e"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
