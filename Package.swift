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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.2-rc3/breez_sdkFFI.xcframework.zip", checksum: "d4c933aa23bf13090cbf7092473096623f8547e9b6c2a175af4e368e358ef097"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
