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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.1.2/breez_sdkFFI.xcframework.zip", checksum: "b76de373170fe841bde3d8b7677644732ab0794bdf896703b7a3c127c95d9feb"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
