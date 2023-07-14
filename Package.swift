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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.1.3/breez_sdkFFI.xcframework.zip", checksum: "48d39ec3e6849b5a5c240f3d5ae80dcba57b16d4828f60d97b9a490923ff0082"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
