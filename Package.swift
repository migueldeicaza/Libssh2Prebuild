// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.4/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.4.xcframework.zip",
                      checksum: "4bd6766f4ebf419f0a9bfd19f81e709ecf1fa9ef15f8f0ef7750c43a63c93d55")
    ]
)
