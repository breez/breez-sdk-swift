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
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.2/breez_sdkFFI.xcframework.zip", checksum: "07329e775b8f4c11eae5a368e90f2376ac28f0e612f477e807b71f5df641a79d"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
