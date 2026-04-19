// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.11.2-dev.xibbon%2Bgda3d1bd44cd9/CSSH-1.11.2-dev.xibbon+gda3d1bd44cd9.openssl-3.5.6.xcframework.zip",
                      checksum: "6b21c52dc584dbcbd3ab06e99aa0681c49fbaf3887c31041a85a4b794b81046e")
    ]
)
