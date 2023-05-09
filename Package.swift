// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_1.2/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_1.2.xcframework.zip",
                      checksum: "4a49fa630b25f4b3f7c849dd4ee24010f9eac2747aee1bb2cefd52b9c0e34c85")
    ]
)
