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
    dependencies: [
        .package(
            url: "git@github.com:lukaszosiennik/commons.git",
            .branch("develop")
        ),
    ],
    targets: [
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
