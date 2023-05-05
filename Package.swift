// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.1/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_05_05_1.1.xcframework.zip",
                      checksum: "0031b8627f1b73cdf90021b9155d339478a70ba6cfb1ad17e3247e96c2410978")
    ]
)
