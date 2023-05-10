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
                      checksum: "502521f44a31e24dc1c469e82282bfcdc3f4826f3da35ff585509a45b139fdc7")
    ]
)
