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
        .binaryTarget(name: "fluentAdFlowAdsWidget", url: "https://fluent-adflow-mobile-sdk.s3.amazonaws.com/ios/FluentAdFlowAdsWidget.xcframework.v0.0.1.zip", checksum: "d8b2f65f9ee66f8a59bd1d22ab3dfdc3b4d11c722408c399e920b8f37fd1bfc7")
    ]
)
