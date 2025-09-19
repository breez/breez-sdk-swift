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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.3-dev2/breez_sdkFFI.xcframework.zip", checksum: "5f5564853a3aa8be620760da7e6a503d366727d7557fc2ce5e3986bdf72e1594"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
