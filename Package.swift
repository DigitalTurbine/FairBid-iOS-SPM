// swift-tools-version:5.3

// Created by Digital Turbine on 18/03/2026.
// Copyright © 2026 Digital Turbine. All rights reserved.
// License: https://www.digitalturbine.com/sdk-license-fyber

import PackageDescription

let package = Package(
    name: "FairBidSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FairBidSDK",
            targets: ["FairBidSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM", .exact("8.4.7")),
    ],
    targets: [
        .target(
            name: "FairBidSDKTarget",
            dependencies: [
                .target(name: "FairBidSDK"),
                .target(name: "FMPAdapter"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
            ],
            path: "Sources/FairBidSDKTarget"
        ),
        .binaryTarget(
            name: "FairBidSDK",
            url: "https://storage.googleapis.com/gcs-fairbid-sdk-assets-prod-useast1/fairbid-sdk/ios/FairBid-iOS-SDK-3.67.0.zip",
            checksum: "e3b48f0d06e777e5c70a4d1131671e6d4e4be5bfa48c6d9b56f8a00c1dffc17d"
        ),
        .binaryTarget(
            name: "FMPAdapter",
            url: "https://cdn2.inner-active.mobi/fmp-sdk/files/FMPAdapter-iOS-SPM-8.4.7.zip",
            checksum: "76adc05017945b94f9d2b2f6d9a802998075b003875f6602bbd5341b15539645"
        ),
    ]
)
