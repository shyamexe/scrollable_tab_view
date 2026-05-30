// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "scrollable_tab_view",
    platforms: [
        .macOS("10.14")
    ],
    products: [
        .library(name: "scrollable-tab-view", targets: ["scrollable_tab_view"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "scrollable_tab_view",
            dependencies: []
        )
    ]
)
