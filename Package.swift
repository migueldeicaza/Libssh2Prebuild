// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_2.3/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_2.3.xcframework.zip",
                      checksum: "5bf359b8fe21c19ac04a305a27ae29f9dae102a592164305a515f6bd954e7024")
    ]
)
