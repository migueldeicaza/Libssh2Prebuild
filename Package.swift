// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.6/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.6.xcframework.zip",
                      checksum: "cf6f82b43934ec45a8acdec4b8291fb6d1a650142bfad184509409ee6d7fb575")
    ]
)
