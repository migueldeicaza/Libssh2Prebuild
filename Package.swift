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
                      checksum: "f2cee38bbafd80d42463e00c008c34d7fd4d73d454a694b205a747f219bdc01a")
    ]
)
