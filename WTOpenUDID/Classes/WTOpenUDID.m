//
//  WTOpenUDID.m
//  Pods
//
//  Created by wentianen on 16/5/23.
//
//

#import "WTOpenUDID.h"
#import "OpenUDID.h"
#import "SSKeychain.h"

NSString *const kWTOpenUDIDServiceKey = @"kWTOpenUDIDServiceKey";
NSString *const kWTOpenUDIDAccountKey = @"kWTOpenUDIDAccountKey";

@implementation WTOpenUDID

+ (NSString *)openUDID {
    NSString *udid = [self loadOpenUDID];
    if (udid == nil) {
        udid = [OpenUDID value];
        [self cacheOpenUDID:udid];
    }
    return udid;
}

+ (NSString *)loadOpenUDID {
    return [SSKeychain passwordForService:kWTOpenUDIDServiceKey account:kWTOpenUDIDAccountKey];
}

+ (BOOL)cacheOpenUDID:(NSString *)openUDID {
    return [SSKeychain setPassword:openUDID forService:kWTOpenUDIDServiceKey account:kWTOpenUDIDAccountKey];
}

@end
