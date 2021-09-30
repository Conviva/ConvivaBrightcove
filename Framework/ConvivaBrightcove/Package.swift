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
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.2/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "22982beb9c587ae0fcbc7cf2e90c532e3572f99a1ee04b1d767e558a84fa24c2"),
        
//        .binaryTarget(
//            name: "ConvivaSDK",
//            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/1.0.0/ConvivaSDK/ConvivaSDK.xcframework.zip",
//            checksum: "2b53aded747578bb7b5cb5832f47590130b59c1a0b65996977380c6988a789f9"),

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
