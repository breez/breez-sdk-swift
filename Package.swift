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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.14/breez_sdkFFI.xcframework.zip", checksum: "143c1b4264f77b1e737c9eb14c80ff7dcbbe5cf35b35f13875d9fdfa965021ae"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
