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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.3-dev1/breez_sdkFFI.xcframework.zip", checksum: "97bf9a9ae4581fba18ac42d908aeb0d13497eb9af809c9fcceaaf6019a8d7fff"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
