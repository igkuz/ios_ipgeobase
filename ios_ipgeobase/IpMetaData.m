//
//  IpMetaData.m
//  ios_ipgeobase
//
//  Created by Antol Peshkov on 09.02.13.
//  Copyright (c) 2013 ios_workshop. All rights reserved.
//

#import "IpMetaData.h"

@implementation IpMetaData

@synthesize city = _city;

-(id)initWithCity:(NSString *)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

@end
