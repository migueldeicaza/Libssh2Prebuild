// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.3/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.3.xcframework.zip",
                      checksum: "d9cf06ac6abfb4e18cd6ccc068570aee3121e509fc0f77171ec0eb033c9ce865")
    ]
)
