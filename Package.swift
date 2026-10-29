// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_DataAcqu",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_DataAcqu",
            targets: ["YF_DataAcqu_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.5"
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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/eas/5.3.7/YFData.xcframework.zip",
            checksum: "db3fdc0f328665ea17a470dd93ac29419e954c76aa41b6a346e6e8bd142bba62"
        )
    ]
)
