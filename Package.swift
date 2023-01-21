// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.7/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.7.xcframework.zip",
                      checksum: "2e5b9b795008424d4128296375d424192e7fd1e9933bc8ae459131f0a20ab7f2")
    ]
)
