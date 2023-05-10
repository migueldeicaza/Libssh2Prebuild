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
                      checksum: "f461c51829def755ce9d10c10a1eb3dfc6b2ee84d74b5dd11b007c808f86c3d3")
    ]
)
