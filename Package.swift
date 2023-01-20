// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/CSSH-1.10.0%2BOpenSSL_1_1_1o_TEST.1/CSSH-1.10.0+OpenSSL_1_1_1o_TEST.1.xcframework.zip",
                      checksum: "59f1e7c3e4c21462d757b3c625d369eeaac16d29263cd11e59466d4c93658937")
    ]
)
