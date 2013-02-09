//
//  ios_ipgeobase.m
//  ios_ipgeobase
//
//  Created by Igor Kuznetsov on 09.02.13.
//  Copyright (c) 2013 ios_workshop. All rights reserved.
//

#import "IpGeoBase.h"

@implementation IpGeoBase

static NSString *urlString = @"http://ipgeobase.ru:7020/geo";

+ (IpMetaData *)lookup:(NSString *)ip
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?ip=%@", urlString, ip]]];
    
    NSURLResponse *response;
    NSError *error = nil;
    NSData *result = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSString *resultString = [[NSString alloc] initWithData:result encoding:NSWindowsCP1251StringEncoding];
    
    
    
    id retData = [[IpMetaData alloc] init];
    return retData;
}

@end
