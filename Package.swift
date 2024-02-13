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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.0/breez_sdkFFI.xcframework.zip", checksum: "bc027f6016ae5449dab13949937034b3e2e92f4071682c649bcf0664f562073a"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
