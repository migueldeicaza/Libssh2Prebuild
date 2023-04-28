// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_27_2.8/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_27_2.8.xcframework.zip",
                      checksum: "8628729ce1033213ef29d53c620eaf5fb8604746d3e524df20be9f2ca73f854d")
    ]
)
