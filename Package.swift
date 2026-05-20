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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/eas/5.3.2/YFData.xcframework.zip",
            checksum: "579378ea05441b055bfe9d2b90a70313e15e46d11671e2ea0371a5a195f6dc3c"
        )
    ]
)
