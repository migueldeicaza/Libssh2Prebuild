// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/TRACK_2023_04_25/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_25.7.xcframework.zip",
                      checksum: "28bad077a0e6f3ce066aec663a234b5c69413a21adb66c902d8d5e2b84486a76")
    ]
)
