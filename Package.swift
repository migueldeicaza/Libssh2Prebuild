// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.4/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.4.xcframework.zip",
                      checksum: "5ffb07dcfad9bd593fbbb495951040491690c30161964ebcf939c937292a3cde")
    ]
)
