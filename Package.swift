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
                      checksum: "6828b01bcff5718028b3f92de780c89c5c675f199cd7f93507a1b43d907a2081")
    ]
)
