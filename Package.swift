// swift-tools-version:5.6
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
            exact: "1.9.1"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.0.0"
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
                path: "Sources"
            ),
            .binaryTarget(
                name: "BlueSeaAdmobAdapter",
                url: "https://sdk.cdn.blueseasx.com/ios/V1.9.1/2026101000/adapter-V1.9.1.0/BlueSeaAdmobAdapter.xcframework.zip",
                checksum: "d09030167a107778447aad2717c2126e21d2bc6c611cc73bed0f503135a7ee65"
            ),
        ]
)
