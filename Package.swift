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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.0.4/breez_sdkFFI.xcframework.zip", checksum: "65fadf991e17f0a76f8f843f63ad8af806ccf91181318e6785fa4dda53481fb4"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
