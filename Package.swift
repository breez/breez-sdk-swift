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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.3-rc2/breez_sdkFFI.xcframework.zip", checksum: "c2464824092e41d61416a50243ec75291bc0ee0cabec6c7c9ea048864917400a"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
