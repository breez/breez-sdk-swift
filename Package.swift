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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0-rc1/breez_sdkFFI.xcframework.zip", checksum: "57256a2dd3365c2d9aeccf92ff678367207464229ba3e302387d53d1a04e213d"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
        .target(name: "BreezSDKNotification", dependencies: ["BreezSDK"]),
    ]
)
