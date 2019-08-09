//
//  BCOvMoviePlayerStreamerProxy.h
//  VideoCloudBasicPlayer
//
//  Created by Peda Muvva on 1/14/15.
//  Copyright (c) 2015 Brightcove. All rights reserved.
//
//#import <MediaPlayer/MediaPlayer.h>
#import <BrightcovePlayerSDK/BrightcovePlayerSDK.h>
#import "NativeStreamerProxy.h"
//#import "AVFoundationStreamerProxy.h"


@interface BCOVMoviePlayerStreamerProxy : NativeStreamerProxy
- (id)initWithStreamer:(id<BCOVPlaybackController>)streamer;

@end
