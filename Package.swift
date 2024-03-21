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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.8/breez_sdkFFI.xcframework.zip", checksum: "36ac1bd82b6505a3fea74dc497bf4079226e9be66b842b3b5720d1d7773b06e7"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
