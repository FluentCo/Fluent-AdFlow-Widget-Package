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
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://fluent-adflow-mobile-sdk.s3.amazonaws.com/ios/FluentAdFlowAdsWidget.xcframework.v0.0.1.zip", checksum: "835c9dd8c7056809cd251a7c6e7caf8d682e8a3464f737d83ceacf7dbab54a80")
    ]
)
