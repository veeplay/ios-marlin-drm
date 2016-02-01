//
//  VeeplayMarlinManager.h
//  APSVAST
//
//  Created by gabi on 20.08.2014.
//  Copyright (c) 2014 Appscend. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APSUnitManagerProtocol.h"

#define kAPSMetadataDrmUrl @"drm_encoding_url"

extern NSString* const kVeeplayMarlinDRMEncoding;

/**
 The VeeplayMarlinManager handles playback for units with Marlin DRM encryption. To instantiate a Marlin manager object and register it with the player:
 
        VeeplayMarlinManager *marlinManager = [[VeeplayMarlinManager alloc] init];
        [[APSMediaPlayer sharedInstance] registerUnitManager:marlinManager];
 
 Then:
 
 - Set the `managerType` property of the `APSMediaUnit` object to `@"marlin"`. If doing this programatically, you can also use the `kVeeplayMarlinDRMEncoding` constant.
 - Optionally, to have the player download and add a broadband license to the local store, you can set the `kAPSMetadataDrmUrl` key in the `metadata` dictionary of an item to the string URL to the license file. To configure from JSON, set the `drm_encoding_url` metadata key.
 */
@interface VeeplayMarlinManager : NSObject <APSUnitManagerProtocol>
@end
