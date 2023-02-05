//
//  CISBCOVMoviePlayerStreamerProxy.h
//  VideoCloudBasicPlayer
//
//  Created by Peda Muvva on 1/14/15.
//  Copyright (c) 2015 Brightcove. All rights reserved.
//
//#import <MediaPlayer/MediaPlayer.h>
#import <BrightcovePlayerSDK/BrightcovePlayerSDK.h>
#import "CISBCNativeStreamerProxy.h"
//#import "AVFoundationStreamerProxy.h"

@import ConvivaSDK;

@interface CISBCOVMoviePlayerStreamerProxy : BCNativeStreamerProxy <CISStreamerProxyProtocol>

- (id)initWithStreamer:(id<BCOVPlaybackController>)streamer;

- (instancetype)initWithStreamer:(id<BCOVPlaybackController>)streamer
            playerEventsListener:(CISPlayerEventsListener)playerEventsListener
                          logger:(id<CISLoggingProtocol>)logger;

@end
