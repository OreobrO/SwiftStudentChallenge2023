// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Test",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Test",
            targets: ["AppModule"],
            bundleIdentifier: "oreobro.Test",
            teamIdentifier: "GBQ3ZW8V84",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .dog),
            accentColor: .presetColor(.teal),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
