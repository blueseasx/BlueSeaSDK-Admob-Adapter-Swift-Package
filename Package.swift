// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueSeaAdmobAdapter",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BlueSeaAdmobAdapter",
            targets: ["BlueSeaAdmobAdapterTarget"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/blueseasx/BlueSeaSDK-Swift-Package.git",
            exact: "1.7.1" 
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.7.0"
        ),
    ],
    targets: [
            // This is a wrapper target to configure various settings required by main binary target.
            .target(
                name: "BlueSeaAdmobAdapterTarget",
                dependencies: [
                    .target(name: "BlueSeaAdmobAdapter"),
                    .product(name: "BlueSeaSDK", package: "BlueSeaSDK-Swift-Package"),
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "Sources",
                linkerSettings: [
                    // NOTE: Swift Package Manager currently does not allow dependencies with unsafeFlags, unless a specific branch/commit is used.
                    // For now, these flags should be added manually to the project for integration.
                    .unsafeFlags(["-ObjC"])
                ]
            ),
            .binaryTarget(
                name: "BlueSeaAdmobAdapter",
                url: "https://sdk.cdn.blueseasx.com/ios/V1.7.1/2026090900/adapter-V1.7.1.0/BlueSeaAdmobAdapter.xcframework.zip",
                checksum: "4e77cfec0c6b7706b4d94ec7cfe67cdffa1f2ad99a27c9a8debddbaa8ac97aba"
            ),
        ]
)
