// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaBrightcove",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaBrightcove",
            targets: ["ConvivaBrightcoveTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaBrightcove",
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.31/Framework/ConvivaBrightcove.xcframework.zip",
            checksum: "2f5913aae7705285cc47d359879d4b8a57c12f119ca9b7e39e388e416f83e3a8"),
        
        .binaryTarget(
                name: "ConvivaSDK",
                url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.43/Framework/ConvivaSDK.xcframework.zip",
                checksum: "a62100f18feaacb6ea6bbf99d9a50ecf87ed60d605de304bce743d13e2e0cbe0"),

        .target(
              name: "ConvivaBrightcoveTarget",
              dependencies: [
                //.target(name: "ConvivaSDK"),
                .target(name: "ConvivaBrightcove")
              ],
              path: "PlatformExcludes"
            )
     ]
)
