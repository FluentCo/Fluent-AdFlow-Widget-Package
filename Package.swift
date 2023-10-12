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
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://mobile-sdk.adflow-prod.minionplatform.com/ios/FluentAdFlowAdsWidget.xcframework.v0.0.5.zip", checksum: "0aac4e17b24f50b6ff2013c2b54ade0001a5e8a4486fa8bd76bdb0eef7f20383")
    ]
)
