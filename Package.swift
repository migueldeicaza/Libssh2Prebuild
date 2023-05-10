// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5/CSSH-1.10.0+openssl-3.1.0_TRACK_2023_05_05_2.5.xcframework.zip",
                      checksum: "e94d1d38d1bc369b9ff591c09a6cdbf2ac86194c690eb227b1f8631bf5c23ccd")
    ]
)
