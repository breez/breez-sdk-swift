// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.0.2/breez_sdkFFI.xcframework.zip", checksum: "0b5d40681654f29bfc7baa824428f0cc2a7fc07194d554cac11c1c24765c7017"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
