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
                      checksum: "55e8df797fb3240e57580256262f946641a883a3d47d1c122618c046bacd41d6")
    ]
)
