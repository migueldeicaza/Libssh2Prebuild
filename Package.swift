// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.2/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.2.xcframework.zip",
                      checksum: "1009a6f267557609b6cd801ec74d4df233df3d1f2b129c01953c3b5a719275aa")
    ]
)
