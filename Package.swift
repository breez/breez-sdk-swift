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
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK", "BreezSDKNotification"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.4.0-rc3/breez_sdkFFI.xcframework.zip", checksum: "a1a2d0baf6b4a882c41858cf348cfa818aa400a5cee386610c1e060d156e1b41"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
        .target(name: "BreezSDKNotification", dependencies: ["BreezSDK"]),
    ]
)
