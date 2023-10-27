// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FluentAdFlowAdsWidget",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FluentAdFlowAdsWidget",
            targets: ["fluentAdFlowAdsWidget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://mobile-sdk.adflow-prod.minionplatform.com/ios/v1.0.1/FluentAdFlowAdsWidget.xcframework.v1.0.1.zip", checksum: "7414c31274d8d4c2d548d99af31ac131df2b747979b6218ab7ef3322e2ec347a")
    ]
)
