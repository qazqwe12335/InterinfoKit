// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InterinfoKit",
    platforms: [ .iOS(.v10) ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "InterinfoKit", targets: ["InterinfoKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // 使用的套件
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "InterinfoKit",
            path: "Sources"),
        .testTarget(
            name: "InterinfoKitTests",
            dependencies: ["InterinfoKit"]),
    ]
)
