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
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://mobile-sdk.adflow-prod.minionplatform.com/ios/v1.0.0/FluentAdFlowAdsWidget.xcframework.v1.0.0.zip", checksum: "9f4c7bd2170cc58bacb9759fd0baf65bd98a9738c2a17dde1f3d25360003683f")
    ]
)
