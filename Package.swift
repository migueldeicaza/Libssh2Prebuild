// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.9.0%2BOpenSSL_1_1_1h_DEBUG/CSSH-1.9.0+OpenSSL_1_1_1h.xcframework.zip",
                      checksum: "3a98e1e442ffe7b847fe01b33ef5a84a90ee105661925c3152007719f372a35b")
    ]
)
