// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_DEBUG_2023_05_05_2.6/CSSH-1.10.0+openssl-3.1.0_DEBUG_2023_05_05_2.6.xcframework.zip",
                      checksum: "9d2539060487289a91ae244fba2002fb6e0deafcba9cd10f487773cbceb01c86")
    ]
)
