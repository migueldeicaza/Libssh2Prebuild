// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.xcframework.zip",
                      checksum: "5415db7b9ffd7fccd65ce0893ed9c78a6915cb52be5b9b07feee4ab7c31a11b8")
    ]
)
