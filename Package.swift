// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.2/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.2.xcframework.zip",
                      checksum: "911ac0491e1c8ff4a0423f679d8e1c7332de8858c804365ed93c4c37c4e1db9e")
    ]
)
