// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FluentAdFlowWidget",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Fluent_AdFlow_Widget",
            targets: ["FluentAdFlowWidgetFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "FluentAdFlowWidgetFramework", url: "https://fluent-adflow-mobile-sdk.s3.amazonaws.com/ios/FluentAdFlowWidget.xcframework.v0.0.1.zip", checksum: "4cb3d45a2544b1b087218f59bd502f9b243396586309c008292677b467875af0")
    ]
)