// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrepBiometricsUI",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PrepBiometricsUI",
            targets: ["PrepBiometricsUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pxlshpr/PrepShared", from: "0.0.137"),
        .package(url: "https://github.com/pxlshpr/PrepBiometrics", from: "0.0.11"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PrepBiometricsUI",
            dependencies: [
                .product(name: "PrepShared", package: "PrepShared"),
                .product(name: "PrepBiometrics", package: "PrepBiometrics"),
            ]
        ),
        .testTarget(
            name: "PrepBiometricsUITests",
            dependencies: ["PrepBiometricsUI"]),
    ]
)
