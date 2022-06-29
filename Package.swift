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
                      checksum: "4a23cefddb746a268edcf7d24dcb9610f4ad74a2e2ef46fc0c29687839dc6dcd")
    ]
)
