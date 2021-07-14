// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LocalPackage",
    products: [
        .library(name: "One", targets: ["One"])
    ],
    targets: [
        .systemLibrary(
        name: "COne",
        pkgConfig: "COne"),
        .target(
        name: "One",
        dependencies: ["COne"]),
    ]
)
