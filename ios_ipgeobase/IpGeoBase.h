//
//  ios_ipgeobase.h
//  ios_ipgeobase
//
//  Created by Igor Kuznetsov on 09.02.13.
//  Copyright (c) 2013 ios_workshop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IpMetaData.h"

@interface IpGeoBase : NSObject

+ (IpMetaData *)lookup:(NSString *)ip;

@end
