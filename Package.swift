// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.5/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.5.xcframework.zip",
                      checksum: "049062a521f81cbf50522849955bfbf66bf472425aefbec63c8bea91e89acc33")
    ]
)
