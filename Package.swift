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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.9/breez_sdkFFI.xcframework.zip", checksum: "189367bc02bacaaac0d90e0cb73d6a145a57525f078312f99ea2df374b8f79f1"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
