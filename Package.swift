// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "LoadingShimmer",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "LoadingShimmer", targets: ["LoadingShimmer"])
    ],
    targets: [
        .target(
            name: "LoadingShimmer",
            path: "LoadingShimmer/Classes/"
        )
    ],
    swiftLanguageVersions: [.v5]
)
