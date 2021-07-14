// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "MultipleImportIssue",
  dependencies: [
    .package(path: "LocalPackage")
  ],
  targets: [
    .systemLibrary(
      name: "CTwo",
      pkgConfig: "CTwo"),
    .target(
      name: "Two",
      dependencies: [
        .product(name: "One", package: "LocalPackage"), 
        "CTwo"]),
  ]
)
