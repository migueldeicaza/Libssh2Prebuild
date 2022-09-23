// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/CSSH-Preview1.10.0%2BOpenSSL_1_1_1o_DEBUG.4/CSSH-Preview1.10.0+OpenSSL_1_1_1o_DEBUG.4.xcframework.zip",
                      checksum: "1d2b2441bd32cfbf2255ca627062ad94f42efcb625c94d2d15b6094e55c3d687")
    ]
)
