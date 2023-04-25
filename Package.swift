// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_25.7/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_25.7.xcframework.zip",
                      checksum: "490ddde9e83e317ecb0861c2228a71211a368af43ee58334f8063f36b5553344")
    ]
)
