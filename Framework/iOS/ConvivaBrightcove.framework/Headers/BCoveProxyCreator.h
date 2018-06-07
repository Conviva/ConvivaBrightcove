//
//  BCoveProxyCreator.h
//  iOSClient
//
//  Created by Senthilkumar Powthiram on 22/02/16.
//  Copyright © 2016 Conviva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCoveProxyCreator : NSObject

/// @brief Create BrightCove Proxy object
///
/// \param streamer controller instance is passed
/// \return Returns Conviva BCoveProxy object

+ (id)createBCoveProxy:(id)streamer;

/// @brief Destroy BrightCove Proxy object
///
/// \param streamer Proxy object which was created using BCoveProxyCreator method

+ (void)CleanUpProxy:(id)streamer;

@end
