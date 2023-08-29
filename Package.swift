// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_05_2.6/CSSH-1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_05_2.6.xcframework.zip",
                      checksum: "46596d403f50582fcc228620e45a2ddd2cf9cdbed1047b8604890a65c7a4ff05")
    ]
)
