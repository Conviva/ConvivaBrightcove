# ConvivaBrightcove Framework

The ConvivaBrightcove Framework supports cocoapods and manual installation. The library is delivered as Static Framework and deployment is supported on iOS 8 and above.

## Migrating from Pre 2.141.0 version
For customers who have already integrated pre 2.141.0 version of Conviva library, we recommend them to migrate to the latest 
release 2.141.0. Please follow these two steps to migrate to 2.141.0 version
  1. Remove libLivepass.a from “Link Binary with Libraries” of xcode
  2. Remove the following header file from your application and follow either cocoapods or manual way of installation.
        * #import "LivePass.h"
        * #import "ConvivaLightSession.h"
        * #import "ConvivaContentInfo.h"
        * #import "BCoveProxyCreator.h"

## Cocoapods Installation
    Add the following line in your pod file and run 'pod install' command
    
    source 'https://github.com/Conviva/Conviva-PodSpecs.git'
    source 'https://github.com/CocoaPods/Specs.git'

    pod 'ConvivaBrightcove', '2.141.0'
    

## Manual Installation
To add the ConvivaBrightcove library to your project manually:

1.	Download the latest ConvivaCore [here](https://github.com/Conviva/ConvivaCore/archive/2.141.0.zip)

2.	Download the latest ConvivaBrightcove Module [here](https://github.com/Conviva/ConvivaBrightcove/archive/2.141.0.zip)

3.	Unzip the package and add ConvivaCore.framework and ConvivaBrightcove.framework to “Link Binary with Libraries” under build phase.

4.	Add the following system frameworks to “Link Binary with Libraries” section in xcode.

    * CoreMedia
    * SystemConfiguration
    * MobileCoreServices
    * CoreTelephony (iOS only)

5.	Add “-ObjC” to “Other Linker Flags” of Xcode.

## Import Statements

  Add the following import statements to your source code to refer Conviva classes.

    * @import ConvivaBrightcove; (Objective-C)
    * @import ConvivaCore; ( Objective-C)
    * import ConvivaBrightcove (Swift)
    * import ConvivaCore (Swift)
