// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/xibbon/Libssh2Prebuild/releases/download/1.11.2-dev.xibbon-2026-05-baseline%2Bg5a54b7c9eec7.openssl-3.5.6/CSSH-1.11.2-dev.xibbon-2026-05-baseline%2Bg5a54b7c9eec7.openssl-3.5.6.xcframework.zip",
                      checksum: "35389b90a4729463cbd3bde7692156d027b0fde31579b4c0deb577bd9800a857")
    ]
)
