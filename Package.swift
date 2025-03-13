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
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.6.7/breez_sdkFFI.xcframework.zip", checksum: "0e2978d59bb1b60f0904e87f59e5810210af58c858dee991a15bf20a4bccc599"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
