// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.3/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.3.xcframework.zip",
                      checksum: "8efcfc51ce5974f7c8ddd73e9527e531da79ad2a7ce0d4ca6c243412506e211a")
    ]
)
