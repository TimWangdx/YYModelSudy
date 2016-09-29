//
//  User.m
//  YYModelTest
//
//  Created by HaKim on 16/9/27.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "User.h"
#import <YYModel/YYModel.h>

@implementation User

- (NSString *)description { return [self yy_modelDescription]; }

+ (NSDictionary*)modelContainerPropertyGenericClass{
    return @{@"shadows" : @"NSNumber"};
}

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"name"  : @"n",
             @"page"  : @"p",
             @"desc"  : @"ext.desc",
             @"bookID": @[@"id", @"ID", @"book_id"],
             @"hehename":@"n"};
}

- (BOOL)modelCustomTransformToDictionary:(NSMutableDictionary *)dic{
    return YES;
}

@end
