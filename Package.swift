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
                      checksum: "d33b9a0e22eff08f08d1535231a58287ed778c43a65565bb563bd41e4a79a060")
    ]
)
