# ConvivaBrightcove Framework

The ConvivaBrightcove Framework supports cocoapods and manual installation. The library is delivered as Static Framework and deployment is supported on iOS 12 and above.**Supports iOS/tvOS 14 as well.**

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
    Add the following lines in your pod file and run 'pod install' command
    
    source 'https://github.com/Conviva/Conviva-PodSpecs.git'
    source 'https://github.com/CocoaPods/Specs.git'
    
    // Without Advertising Identifier(IDFA) support
    pod 'ConvivaBrightcove','4.0.17'

    OR 

    // With Advertising Identifier(IDFA) support
    pod 'ConvivaBrightcove','4.0.16'
    
## Swift Package Manager Installation
1. Add the Package Dependency repository URL as https://github.com/Conviva/conviva-ios-bcove-spm
2. Select version as:
    * 4.0.16 if it's with Advertising Identifier Support.
    * 4.0.17 if it's without Advertising Identifier Support.

## Manual Installation
To add the ConvivaBrightcove library to your project manually:

1.	Download the latest ConvivaSDK/ConvivaCore from below paths.

    * ConvivaSDK
      * [Without Advertising Identifier(IDFA) support](https://github.com/Conviva/ConvivaSDK/archive/4.0.27.zip)
      OR
      * [With Advertising Identifier(IDFA) support](https://github.com/Conviva/ConvivaSDK/archive/4.0.26.zip) 
      
    * ConvivaCore
      * [Here](https://github.com/Conviva/ConvivaCore/archive/3.0.12.zip)


2.	Download the latest ConvivaBrightcove Module from below path.
     * [Without Advertising Identifier(IDFA) support](https://github.com/Conviva/ConvivaBrightcove/archive/4.0.17.zip)
      OR
     * [With Advertising Identifier(IDFA) support](https://github.com/Conviva/ConvivaBrightcove/archive/4.0.16.zip) 



3.	Unzip the package and add ConvivaCore.framework and ConvivaBrightcove.framework to “Link Binary with Libraries” under build phase.

4.	Add the following system frameworks to “Link Binary with Libraries” section in xcode.

    * CoreMedia
    * SystemConfiguration
    * MobileCoreServices
    * Security
    * AdSupport
    * CoreTelephony (iOS only)
    * Network (Add as optional)
    * AppTrackingTransparency (weak) - Required only for Advertising Identifier supported library (Application must be built with XCode 12 or above)

5.	Add “-ObjC” to “Other Linker Flags” of Xcode.

## Import Statements

  Add the following import statements to your source code to refer Conviva classes.

    * @import ConvivaBrightcove; (Objective-C)
    * @import ConvivaCore; ( Objective-C)
                (or)
    * @import ConvivaSDK; ( Objective-C)
    * import ConvivaBrightcove (Swift)
    * import ConvivaCore (Swift)
                (or)
    * import ConvivaSDK (Swift)

