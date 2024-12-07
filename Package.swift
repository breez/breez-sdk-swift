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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.6/breez_sdkFFI.xcframework.zip", checksum: "0c021b0427a76adfdbce4c975f65fee10bb7df6c19a15148fcc0321252c91574"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
