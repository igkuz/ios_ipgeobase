//
//  ios_ipgeobaseTests.m
//  ios_ipgeobaseTests
//
//  Created by Igor Kuznetsov on 09.02.13.
//  Copyright (c) 2013 ios_workshop. All rights reserved.
//

#import "ios_ipgeobaseTests.h"
#import "IpGeoBase.h"

@implementation ios_ipgeobaseTests {
    NSString *ip;
}

- (void)setUp
{
    [super setUp];
    
    ip = @"46.8.114.116";
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)test_lookup_http_query
{
    [IpGeoBase lookup:ip];
}

- (void)test_lookup_response_object
{
    id data = [IpGeoBase lookup:ip];
    
    STAssertTrue([data isKindOfClass:[IpMetaData class]], @"Wrong type");
}

@end
