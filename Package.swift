// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CSSH",
    products: [
        .library(name: "CSSH", targets: ["CSSH"])
    ],
    targets: [
        .binaryTarget(name: "CSSH",
	                    
                      url: "https://github.com/migueldeicaza/Libssh2Prebuild/releases/download/TRACK_2023_04_25/CSSH-1.10.0+OpenSSL_1_1_1o_TRACK_2023_04_25_2.7.xcframework.zip",
                      checksum: "45cec22a8f9620cf75b722fbf53d69a0f9d6fe62586f8dbbb8bba08d4361bf59")
    ]
)
