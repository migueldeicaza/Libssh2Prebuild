// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_27_1.7/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_27_1.7.xcframework.zip",
                      checksum: "3e51b2caa6be2a6b4b84324d613e0f1604d6e4c3a51b7073c48b4e4751a5e898")
    ]
)
