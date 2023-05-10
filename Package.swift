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
                      checksum: "6f25fbcf434e1bb47a48aa5fd213d01ea5dbf6e78966a3010a68e0db380f0163")
    ]
)
