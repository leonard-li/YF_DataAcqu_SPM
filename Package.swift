// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_DataAcqu",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "YF_DataAcqu",
            targets: ["YF_DataAcqu_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.2"
    )
    ],
    targets: [
        .target(
            name: "YF_DataAcqu_Target",
            dependencies: [
                "YF_DataAcqu_Binary",
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_DataAcqu_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/eas/5.3.3/YFData.xcframework.zip",
            checksum: "bb4d1fcf6f4949c7e0e6bbc2cecb5231ec9be456c1d3efcd1e311490a68c556c"
        )
    ]
)
