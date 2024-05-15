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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.1/breez_sdkFFI.xcframework.zip", checksum: "f21e82d474a3de5422f7774ca64cab85849fd10ba3d20445924c56f90ce2fe0b"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
