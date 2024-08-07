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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.2/breez_sdkFFI.xcframework.zip", checksum: "ef6df09be8cf911f6d9371668fbfcd9a5192601de366d67cb3db1b7cc00d5f93"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
