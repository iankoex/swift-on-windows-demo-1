// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "App",
    dependencies: [
        .package(url: "https://github.com/moreSwift/swift-windowsfoundation.git", exact: "0.1.0"),
        .package(url: "https://github.com/moreSwift/swift-uwp.git", exact: "0.1.0"),
        .package(url: "https://github.com/moreSwift/swift-windowsappsdk.git", exact: "0.1.2"),
        .package(url: "https://github.com/moreSwift/swift-winui.git", exact: "0.1.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WinUI", package: "swift-winui"),
            ],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ],
        ),
        .testTarget(
            name: "AppTests",
            dependencies: ["App"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ],
        ),
    ],
    swiftLanguageModes: [.v6]
)
