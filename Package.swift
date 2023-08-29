// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5.xcframework.zip",
                      checksum: "5608212b4d41e9797024d8886a9d53eb1276bd3daf758abbd99a0013ef5b3263")
    ]
)
