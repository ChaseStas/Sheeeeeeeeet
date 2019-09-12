// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sheeeeeeeeet",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Sheeeeeeeeet",
            targets: ["Sheeeeeeeeet"])
    ],
    dependencies: [
        .package(url: "git@github.com:Quick/Quick.git", from: "2.1.0"),
        .package(url: "git@github.com:Quick/Nimble.git", from: "8.0.2"),
        .package(url: "git@github.com:danielsaidi/Mockery.git", .branch("0.1.0-beta"))
    ],
    targets: [
        .target(
            name: "Sheeeeeeeeet",
            dependencies: []),
        .testTarget(
            name: "SheeeeeeeeetTests",
            dependencies: ["Sheeeeeeeeet", "Quick", "Nimble", "Mockery"])
    ]
)