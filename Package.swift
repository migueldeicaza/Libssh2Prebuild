// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o/CSSH-1.10.0+OpenSSL_1_1_1o.xcframework.zip",
                      checksum: "3130a79298da5062a2a5262c4b395e03af8ee08c350afe299065b9188d26dc73")
    ]
)
