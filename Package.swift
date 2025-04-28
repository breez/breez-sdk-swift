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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.7.1/breez_sdkFFI.xcframework.zip", checksum: "e10c61c9bd1648da49381dc794fd86118304a2ece9c2b22c668fea6688a83805"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
