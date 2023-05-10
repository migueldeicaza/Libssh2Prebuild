// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5.xcframework.zip",
                      checksum: "841a1e68812ffcd53b943c2c49761df02097226fc01a28f784b0e3002d08e6ba")
    ]
)
