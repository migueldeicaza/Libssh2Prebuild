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
                      checksum: "f6287c055df1c6eaf29edbe33c410801e27e8a3139d2feeb24d0a046d1fc974a")
    ]
)
