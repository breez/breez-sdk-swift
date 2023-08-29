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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.0/breez_sdkFFI.xcframework.zip", checksum: "60914de4942b06976f1ddd89a66d5ce81fc1fdc6021b9528a0a699f019910b3c"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
