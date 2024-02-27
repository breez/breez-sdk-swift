// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK", "BreezSDKNotification"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.2"),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0"),
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.3.1/breez_sdkFFI.xcframework.zip", checksum: "fcda9a87b512fc0ab81619096d24db6e54b622c18cded6d1d78db95f05c10265"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI", "KeychainAccess", "XCGLogger"]),
    ]
)
