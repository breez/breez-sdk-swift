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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.8.3-dev1/breez_sdkFFI.xcframework.zip", checksum: "05d5ff5e87ba30dcf49171ee1d167b805cfa97cb129e26a97ad50cdcf0cc9afd"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
