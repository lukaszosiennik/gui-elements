// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "GUIElements",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "GUIElements",
            targets: [
                "GUIElements",
            ]
        ),
    ],
    targets: [
        .target(
            name: "commons",
            dependencies: []
        ),
        .target(
            name: "GUIElements",
            dependencies: [
                .byName(
                    name: "commons"
                ),
            ]
        ),
    ]
)
