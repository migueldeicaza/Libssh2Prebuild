// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG.6/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG.6.xcframework.zip",
                      checksum: "00fa0660ba8aad4cb279c01bad3fd3d7207896885beac8e7eed2c50009a7d931")
    ]
)
