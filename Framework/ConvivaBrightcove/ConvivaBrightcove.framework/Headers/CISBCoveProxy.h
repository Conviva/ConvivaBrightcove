//
//  BCoveProxyCreator.h
//  iOSClient
//
//  Created by Senthilkumar Powthiram on 22/02/16.
//  Copyright © 2016 Conviva. All rights reserved.
//

#import <Foundation/Foundation.h>

@import ConvivaSDK;

@interface CISBCoveProxy : NSObject

/// @brief Create BrightCove Proxy Creator object
///
/// \param streamer Brightcove controller instance is passed
/// \return Returns Conviva BCoveProxy creator object

+ (id)createBCoveProxy:(id)streamer;

@end
