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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.5.1-rc5/breez_sdkFFI.xcframework.zip", checksum: "fcb8f74030d8223be7fbea3aede0c727436ffcbc85ac67171747796d69be273c"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
