// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Selene",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "Selene", targets: ["Selene"])
    ],
    targets: [
        .target(
            name: "Selene",
            path: "Selene",
            exclude: ["Selene-Prefix.pch"],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
