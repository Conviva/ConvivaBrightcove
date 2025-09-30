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
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.32/Framework/ConvivaBrightcove.xcframework.zip",
            checksum: "5508368290ee64537e1640ba7332b55b2a047d3566bc2ebab0421256097711ed"),
        
        .binaryTarget(
                name: "ConvivaSDK",
                url: "https://github.com/Conviva/ConvivaSDK/raw/4.2.3/Framework/ConvivaSDK.xcframework.zip",
                checksum: "f544a223a8178e92c8517fd51805139e70725929a91785465da0f98e9201e384"),

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
