// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "swift-example-vapor3",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4)
    ],
    products: [
        .library(name: "foo", targets: ["foo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor", from: "3.0.0"),
    ],
    targets: [
         .target(name: "foo", dependencies: ["Vapor"])
    ],
    swiftLanguageVersions: [.v5]
)
