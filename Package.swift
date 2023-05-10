// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.4/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.4.xcframework.zip",
                      checksum: "2c0ea74d1f7bd4fb297e10eec472bf60140554e10f3bad26f008c98949fac98d")
    ]
)
