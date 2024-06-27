// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_23_AND_EXPLICIT_WINDOW_.8/CSSH-1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_23_AND_EXPLICIT_WINDOW_.8.xcframework.zip",
                      checksum: "bc7e7132fc6caa1abcb2084c9e1b6691970dc5364a96ee969625e496fc77aa79")
    ]
)
