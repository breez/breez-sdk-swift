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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.5/breez_sdkFFI.xcframework.zip", checksum: "8cbd0b56ffd9931ffdef8e89200a17a9a157d83206b62cbe21e70df50ef2f9a0"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
