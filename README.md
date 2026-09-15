# BlueSea iOS Adapter for Admob Mediation 

The BlueSea iOS Adapter for Admob Mediation, distributed via Swift Package Manager.

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/blueseasx/BlueSeaSDK-Admob-Adapter-Swift-Package
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `1090000.0.0` for adapter version `1.9.0.0`).
4. Add the `BlueSeaAdmobAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/blueseasx/BlueSeaSDK-Admob-Adapter-Swift-Package.git",
        exact: "1090000.0.0"
    )
]
```

## Included dependencies

- [`BlueSeaSDK`](https://github.com/blueseasx/BlueSeaSDK-Swift-Package) (pinned to the version certified for this adapter release)
- [`GoogleMobileAds`](https://github.com/googleads/swift-package-manager-google-mobile-ads) (>= 13.7.0)
