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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.7.0/breez_sdkFFI.xcframework.zip", checksum: "c7c11323e7f444fba7647a0e54a369461f70273ebfbe84869618a31fe8b24f5e"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
