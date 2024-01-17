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
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://mobile-sdk.adflow-prod.minionplatform.com/ios/1.0.8/FluentAdFlowAdsWidget.xcframework.1.0.8.zip", checksum: "4054e309aa2ed8663db1a11ae03b2c2bd471b03a9097c94ad09bb064d60a6e62")
    ]
)
