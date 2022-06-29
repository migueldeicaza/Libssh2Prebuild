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
                      checksum: "4922c4a6b553144ae5c04921d885a45f669b6c13fb01ef24d94da6ca804d4d68")
    ]
)
