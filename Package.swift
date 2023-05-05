// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.1/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.1.xcframework.zip",
                      checksum: "15ab3ef2ba92018c25a7250194aa404349b2f7a0fdf220ef2a435c8084e3e5c8")
    ]
)
