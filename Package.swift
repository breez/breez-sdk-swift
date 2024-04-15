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
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK", "BreezSDKNotification"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0-rc2/breez_sdkFFI.xcframework.zip", checksum: "96ea2f50dd22ee879cd8af536047a0f0f8a6201683e2b5ce7ad2dfda1ad7149f"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
        .target(name: "BreezSDKNotification", dependencies: ["BreezSDK"]),
    ]
)
