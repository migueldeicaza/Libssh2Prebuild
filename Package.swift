// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/explicit-window/CSSH-1.10.0+openssl-3.1.0EXPLICIT_WINDOW.7.xcframework.zip",
                      checksum: "99ec01e8e0e5bc6b53d0e0565de2c58dddc50163a461804001b44fb583279c2b")
    ]
)
