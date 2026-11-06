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
            url: "https://storage.googleapis.com/gcs-fairbid-sdk-assets-prod-useast1/fairbid-sdk/ios/FairBid-iOS-SDK-3.68.1.zip",
            checksum: "fd055685a67d13ebca7c281d5af2512efafc51bfadbd75a14be0665509a3321b"
        ),
    ]
)
