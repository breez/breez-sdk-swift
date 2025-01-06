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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.6/breez_sdkFFI.xcframework.zip", checksum: "1bad8bd23e1ebd0282996d38dcaf84d98f36f490976b0eab7134847b5e606116"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
