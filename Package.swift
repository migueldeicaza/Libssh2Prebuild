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
                      checksum: "e72963b9960dd76b781b05ff7b94ffc6e6c7b18f6f5527412323a762f3aa6958")
    ]
)
