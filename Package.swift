// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MySwiftyPackage",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MySwiftyPackage",
            targets: ["MySwiftyPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(name: "HdpSdk", url: "https://homeos-wbench.wesp.telekom.net/gitlab/data/hdp-sdk-ios.git", .exact("1.0.0")),
        .package(url: "https://github.com/Kilo-Loco/MySexyPackage.git", .exact("1.0.0")),

//        .package(url: "https://homeos-wbench.wesp.telekom.net/gitlab/data/hdp-sdk-ios.git", .exact("1.0.0")),
//        .package(url: "gitlab@homeos-wbench.workbench.telekom.de:data/hdp-sdk-ios.git", .branch("master")),
        

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MySwiftyPackage",
            dependencies: ["MySexyPackage"]),
        .testTarget(
            name: "MySwiftyPackageTests",
            dependencies: ["MySwiftyPackage"]),
    ]
)
