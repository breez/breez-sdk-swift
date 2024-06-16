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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.2-rc2/breez_sdkFFI.xcframework.zip", checksum: "291f65cf50b0ac90fa1d94b5318e4e5247b8a6c3a4d65a39d5ff50a688330bdc"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
