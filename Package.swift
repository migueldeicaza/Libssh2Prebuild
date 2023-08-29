// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_05_2.6/CSSH-1.10.0+openssl-3.1.0_VISIONOS_TRACK_2023_05_05_2.6.xcframework.zip",
                      checksum: "e1b22a241d55e9299debe4fc89a7c404cfdfab53e2311b3c66409bdc1971beca")
    ]
)
