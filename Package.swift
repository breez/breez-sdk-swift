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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.2-rc1/breez_sdkFFI.xcframework.zip", checksum: "7944d7f2266400b1faa593b7e84ef67d4cd12f1c210593d242ace98f9ff2fd12"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
