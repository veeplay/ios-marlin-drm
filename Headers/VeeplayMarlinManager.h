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

@interface VeeplayMarlinManager : NSObject <APSUnitManagerProtocol>
@end
