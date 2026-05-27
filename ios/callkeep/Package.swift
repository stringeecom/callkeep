// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "callkeep",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "callkeep", targets: ["callkeep"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "callkeep",
            dependencies: [],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/callkeep")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CallKit"),
                .linkedFramework("Intents"),
                .linkedFramework("PushKit")
            ]
        )
    ]
)
