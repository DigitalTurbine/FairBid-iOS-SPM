// swift-tools-version:5.5

// Created by Digital Turbine on 18/03/2026.
// Copyright © 2026 Digital Turbine. All rights reserved.
// License: https://www.digitalturbine.com/sdk-license-fyber

import PackageDescription

let package = Package(
    name: "FairBidSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FairBidSDK",
            targets: ["FairBidSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/inner-active/FMPAdapter", .exact("8.4.10")),
    ],
    targets: [
        .target(
            name: "FairBidSDKTarget",
            dependencies: [
                .target(name: "FairBidSDK"),
                .product(name: "FMPAdapter", package: "FMPAdapter"),
            ],
            path: "Sources/FairBidSDKTarget"
        ),
        .binaryTarget(
            name: "FairBidSDK",
            url: "https://storage.googleapis.com/gcs-fairbid-sdk-assets-prod-useast1/fairbid-sdk/ios/FairBid-iOS-SDK-3.68.0.zip",
            checksum: "5cd0514deb6e91e1a8fc696e5da51770dfadfcadfef7236272785326c479eee1"
        ),
    ]
)
