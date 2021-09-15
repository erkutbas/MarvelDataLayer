// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarvelDataLayer",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MarvelDataLayer",
            targets: ["MarvelDataLayer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/erkutbas/MarvelDomainLayer.git", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/erkutbas/NetworkLayer.git", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.2.0")),
        .package(url: "https://github.com/erkutbas/NetworkEntityLayer.git", .upToNextMinor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MarvelDataLayer",
            dependencies: [.product(name: "MarvelDomainLayer", package: "MarvelDomainLayer"),
                           .product(name: "NetworkLayer", package: "NetworkLayer"),
                           .product(name: "NetworkEntityLayer", package: "NetworkEntityLayer"),
                           .product(name: "RxCocoa", package: "RxSwift")]),
        .testTarget(
            name: "MarvelDataLayerTests",
            dependencies: ["MarvelDataLayer"]),
    ]
)
