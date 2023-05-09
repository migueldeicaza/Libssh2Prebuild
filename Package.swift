// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_1.2/CSSH-1.10.0+OpenSSL_1_1_1o_DEBUG_2023_05_05_1.2.xcframework.zip",
                      checksum: "98d883f5f6085bfbad91eea157f50c0312b7b756740772ee4dfbbb4ed156612c")
    ]
)
