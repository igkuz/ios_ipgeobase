//
//  ios_ipgeobase.m
//  ios_ipgeobase
//
//  Created by Igor Kuznetsov on 09.02.13.
//  Copyright (c) 2013 ios_workshop. All rights reserved.
//

#import "IpGeoBase.h"
#import "XMLReader.h"

@implementation IpGeoBase

static NSString *urlString = @"http://ipgeobase.ru:7020/geo";

+ (IpMetaData *)lookup:(NSString *)ip
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?ip=%@", urlString, ip]]];
    
    NSURLResponse *response;
    NSError *error = nil;
    NSData *result = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSDictionary *xmlDictionary = [XMLReader dictionaryForXMLData:result error:&error];
    
    NSString *city = [[[[xmlDictionary objectForKey:@"ip-answer"] objectForKey:@"ip"] objectForKey:@"city"] objectForKey:@"text"];
    
    id retData = [[IpMetaData alloc] initWithCity:city];
    return retData;
}

@end
