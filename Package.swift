// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: ["GoogleMapsBase"]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: ["GoogleMapsCore"]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            path: "./Frameworks/GoogleMaps.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            path: "./Frameworks/GoogleMapsBase.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            path: "./Frameworks/GoogleMapsCore.xcframework"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            path: "./Frameworks/GooglePlaces.xcframework"
        )
    ]
)

