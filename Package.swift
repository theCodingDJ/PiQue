// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "PiQue",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11),
        .watchOS(.v5),
        .tvOS(.v11)
    ],
    products: [
        .library(name: "PiQue", targets: ["PiQue"])
    ],
    targets: [
        .target(name: "PiQue", dependencies: []),
        .testTarget(name: "PiQueTests", dependencies: ["PiQue"])
    ]
)
