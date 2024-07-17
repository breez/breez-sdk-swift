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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc4/breez_sdkFFI.xcframework.zip", checksum: "29cd3e5a856472f4d15e471069f0b8d4ebd76dae3ee92a01de5335fe080acbf0"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
