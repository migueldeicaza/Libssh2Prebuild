// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.1-dev.xibbon%2Bg293e451dcd34.openssl-3.5.6/CSSH-1.10.1-dev.xibbon%2Bg293e451dcd34.openssl-3.5.6.xcframework.zip",
                      checksum: "3d3137812036cc5306be293b31a54178bb8d226b7df56d967e34b6255f03d198")
    ]
)
