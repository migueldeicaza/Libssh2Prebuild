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
                      checksum: "d6331b03562af98fdc7ad569d8646f6741a72166b5400e263fe4e73fa7a177cd")
    ]
)
