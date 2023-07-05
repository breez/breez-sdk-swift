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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.1.1/breez_sdkFFI.xcframework.zip", checksum: "87198b6992c547e4a46357fdca0d69dcd8dd9dfe4183badca55722d47b8a1784"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
