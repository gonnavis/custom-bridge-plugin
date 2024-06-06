// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CustomBridgePlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CustomBridgePlugin",
            targets: ["CustomBridgePluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CustomBridgePluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CustomBridgePluginPlugin"),
        .testTarget(
            name: "CustomBridgePluginPluginTests",
            dependencies: ["CustomBridgePluginPlugin"],
            path: "ios/Tests/CustomBridgePluginPluginTests")
    ]
)